import XCTest
@testable import CodeGuideStringsAndCharacters

final class WorkingWithCharactersTests: XCTestCase
{
    func testStringIterationPrintsIndividualCharacters() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printDogCharacters()
        }

        XCTAssertEqual(output, "D\no\ng\n!\n🐶\n")
    }

    func testCharacterAnnotationCreatesStandaloneCharacter()
    {
        XCTAssertEqual(exclamationMarkCharacter(), "!")
    }

    func testStringCanBeBuiltFromCharacters() async throws
    {
        XCTAssertEqual(catStringFromCharacters(), "Cat!🐱")

        let output = try await StandardOutputCapture().capture
        {
            printCatStringFromCharacters()
        }

        XCTAssertEqual(output, "Cat!🐱\n")
    }
}
