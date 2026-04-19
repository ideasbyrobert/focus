import XCTest
@testable import CodeGuideStringsAndCharacters

final class UnicodeTests: XCTestCase
{
    func testPrecomposedAndCombinedEAcuteAreTheSameCharacter()
    {
        let characters = eAcuteCharacters()

        XCTAssertEqual(characters.precomposed, "é")
        XCTAssertEqual(characters.combined, "é")
        XCTAssertTrue(characters.areEqual)
    }

    func testHangulSyllablesCanBePrecomposedOrDecomposed()
    {
        let characters = hangulCharacters()

        XCTAssertEqual(characters.precomposed, "한")
        XCTAssertEqual(characters.decomposed, "한")
    }

    func testCombiningEnclosingCircleBuildsOneCharacter()
    {
        XCTAssertEqual(enclosedEAcuteCharacter(), "é⃝")
    }

    func testRegionalIndicatorsCombineIntoOneCharacter()
    {
        XCTAssertEqual(regionalIndicatorForUSCharacter(), "🇺🇸")
    }
}
