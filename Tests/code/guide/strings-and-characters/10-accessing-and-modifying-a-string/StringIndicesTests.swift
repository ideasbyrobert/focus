import XCTest
@testable import CodeGuideStringsAndCharacters

final class StringIndicesTests: XCTestCase
{
    func testStringIndicesAccessTheExpectedCharacters()
    {
        let characters = greetingIndexedCharacters()

        XCTAssertEqual(characters.first, "G")
        XCTAssertEqual(characters.last, "!")
        XCTAssertEqual(characters.second, "u")
        XCTAssertEqual(characters.offsetSeven, "a")
    }

    func testEmptyStringStartAndEndIndicesAreEqual()
    {
        XCTAssertTrue(emptyStringIndicesAreEqual())
    }

    func testStringIndicesIterateOverCharacters() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printGreetingCharactersWithSpaces()
        }

        XCTAssertEqual(output, "G u t e n   T a g ! \n")
    }
}
