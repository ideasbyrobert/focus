import XCTest
@testable import CodeGuideStringsAndCharacters

final class CountingCharactersTests: XCTestCase
{
    func testUnusualMenagerieHasFortyCharacters() async throws
    {
        XCTAssertEqual(unusualMenagerieCharacterCount(), 40)

        let output = try await StandardOutputCapture().capture
        {
            printUnusualMenagerieCharacterCount()
        }

        XCTAssertEqual(output, "unusualMenagerie has 40 characters\n")
    }

    func testCombiningAcuteAccentDoesNotIncreaseTheCharacterCount() async throws
    {
        let counts = cafeCharacterCounts()

        XCTAssertEqual(counts.beforeWord, "cafe")
        XCTAssertEqual(counts.beforeCount, 4)
        XCTAssertEqual(counts.afterWord, "café")
        XCTAssertEqual(counts.afterCount, 4)

        let output = try await StandardOutputCapture().capture
        {
            printCafeCharacterCounts()
        }

        XCTAssertEqual(
            output,
            "the number of characters in cafe is 4\nthe number of characters in café is 4\n"
        )
    }
}
