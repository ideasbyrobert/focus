import XCTest
@testable import AlgorithmArray

final class ReverseWordsInAStringTests: XCTestCase
{
    func testReversesCanonicalSentence()
    {
        XCTAssertEqual(ReverseWordsInAString.solve("the sky is blue"), "blue is sky the")
    }

    func testTrimsLeadingAndTrailingSpaces()
    {
        XCTAssertEqual(ReverseWordsInAString.solve("  hello world  "), "world hello")
    }

    func testCollapsesRepeatedInternalSpaces()
    {
        XCTAssertEqual(ReverseWordsInAString.solve("a good   example"), "example good a")
    }

    func testHandlesSingleWordInput()
    {
        XCTAssertEqual(ReverseWordsInAString.solve("single"), "single")
    }

    func testHandlesLongDebugFriendlySentence()
    {
        XCTAssertEqual(
            ReverseWordsInAString.solve("alpha beta gamma delta epsilon zeta eta theta iota kappa lambda mu"),
            "mu lambda kappa iota theta eta zeta epsilon delta gamma beta alpha"
        )
    }
}
