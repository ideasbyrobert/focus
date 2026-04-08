import XCTest
@testable import AlgorithmArray

final class RepeatedSubstringPatternTests: XCTestCase
{
    func testAcceptsCanonicalRepeatedPattern()
    {
        XCTAssertTrue(RepeatedSubstringPattern.solve("abab"))
    }

    func testRejectsCanonicalNonPattern()
    {
        XCTAssertFalse(RepeatedSubstringPattern.solve("aba"))
    }

    func testAcceptsLongRepeatedPattern()
    {
        XCTAssertTrue(RepeatedSubstringPattern.solve("abcabcabcabc"))
    }

    func testRejectsSingleCharacterInput()
    {
        XCTAssertFalse(RepeatedSubstringPattern.solve("a"))
    }

    func testRejectsLongDebugFriendlyNonPattern()
    {
        XCTAssertFalse(RepeatedSubstringPattern.solve("abcdefghijklmn"))
    }
}
