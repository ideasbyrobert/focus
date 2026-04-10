import XCTest
@testable import AlgorithmSlidingWindow

final class MinimumWindowSubstringTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MinimumWindowSubstring.solve("ADOBECODEBANC", "ABC"), "BANC")
    }

    func testHandlesImpossibleInput()
    {
        XCTAssertEqual(MinimumWindowSubstring.solve("a", "aa"), "")
    }

    func testHandlesExactMatchInput()
    {
        XCTAssertEqual(MinimumWindowSubstring.solve("a", "a"), "a")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(MinimumWindowSubstring.solve("ADOBECODEBANCXYZAB", "ABCX"), "BANCX")
    }
}
