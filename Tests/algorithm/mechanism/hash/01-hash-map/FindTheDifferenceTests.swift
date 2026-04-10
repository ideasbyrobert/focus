import XCTest
@testable import AlgorithmHash

final class FindTheDifferenceTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(FindTheDifference.solve("abcd", "abcde"), "e")
    }

    func testHandlesEmptyOriginalString()
    {
        XCTAssertEqual(FindTheDifference.solve("", "y"), "y")
    }

    func testHandlesRepeatedCharacters()
    {
        XCTAssertEqual(FindTheDifference.solve("aabbcc", "abcbaca"), "a")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(FindTheDifference.solve("algorithm", "logarithmx"), "x")
    }
}
