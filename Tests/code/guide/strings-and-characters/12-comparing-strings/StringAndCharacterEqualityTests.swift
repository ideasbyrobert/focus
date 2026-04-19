import XCTest
@testable import CodeGuideStringsAndCharacters

final class StringAndCharacterEqualityTests: XCTestCase
{
    func testIdenticalStringValuesAreEqual()
    {
        XCTAssertEqual(quotationEqualityMessage(), "These two strings are considered equal")
    }

    func testCharacterComparisonUsesCanonicalEquivalence()
    {
        XCTAssertEqual(characterCanonicalEquivalenceMessage(), "equivalent, as expected")
    }

    func testStringComparisonUsesCanonicalEquivalence()
    {
        XCTAssertEqual(stringCanonicalEquivalenceMessage(), "equivalent, as expected")
        XCTAssertEqual(eAcuteQuestionEqualityMessage(), "These two strings are considered equal")
    }

    func testVisuallySimilarCharactersCanRemainLinguisticallyDifferent()
    {
        XCTAssertEqual(latinAndCyrillicComparisonMessage(), "These two characters aren't equivalent.")
    }
}
