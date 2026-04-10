import XCTest
@testable import AlgorithmSlidingWindow

final class LongestSubarrayOf1sAfterDeletingOneTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(LongestSubarrayOf1sAfterDeletingOne.solve([1, 1, 0, 1]), 3)
    }

    func testHandlesAllOnesInput()
    {
        XCTAssertEqual(LongestSubarrayOf1sAfterDeletingOne.solve([1, 1, 1]), 2)
    }

    func testHandlesAllZeroesInput()
    {
        XCTAssertEqual(LongestSubarrayOf1sAfterDeletingOne.solve([0, 0, 0]), 0)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(LongestSubarrayOf1sAfterDeletingOne.solve([1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1]), 6)
    }
}
