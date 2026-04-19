import XCTest
@testable import CodeGuideStringsAndCharacters

final class ConcatenatingStringsAndCharactersTests: XCTestCase
{
    func testStringConcatenationMatchesTheLesson()
    {
        XCTAssertEqual(concatenatedWelcome(), "hello there")
        XCTAssertEqual(appendedInstruction(), "look over there")
        XCTAssertEqual(welcomeWithAppendedCharacter(), "hello there!")
    }

    func testMultilineConcatenationWithoutFinalLineBreakJoinsLines() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printBadMultilineConcatenation()
        }

        XCTAssertEqual(output, "one\ntwothree\n")
    }

    func testMultilineConcatenationWithFinalLineBreakKeepsLinesSeparate() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printGoodMultilineConcatenation()
        }

        XCTAssertEqual(output, "one\ntwo\nthree\n")
    }
}
