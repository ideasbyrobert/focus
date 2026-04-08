import XCTest
@testable import AlgorithmArray

final class LengthOfLastWordTests: XCTestCase
{
    func testFindsLengthForCanonicalInput()
    {
        XCTAssertEqual(LengthOfLastWord.solve("Hello World"), 5)
    }

    func testIgnoresTrailingSpaces()
    {
        XCTAssertEqual(LengthOfLastWord.solve("   fly me   to   the moon  "), 4)
    }

    func testHandlesSentenceEndingWithLongerWord()
    {
        XCTAssertEqual(LengthOfLastWord.solve("luffy is still joyboy"), 6)
    }

    func testReturnsZeroForBlankInput()
    {
        XCTAssertEqual(LengthOfLastWord.solve(""), 0)
        XCTAssertEqual(LengthOfLastWord.solve("      "), 0)
    }

    func testHandlesLongDebugFriendlySentence()
    {
        XCTAssertEqual(
            LengthOfLastWord.solve("alpha beta gamma delta epsilon zeta eta theta iota kappa lambda"),
            6
        )
    }
}
