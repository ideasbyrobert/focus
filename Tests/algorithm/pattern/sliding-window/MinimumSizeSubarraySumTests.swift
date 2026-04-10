import XCTest
@testable import AlgorithmSlidingWindow

final class MinimumSizeSubarraySumTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MinimumSizeSubarraySum.solve(7, [2, 3, 1, 2, 4, 3]), 2)
    }

    func testHandlesInputWithoutSolution()
    {
        XCTAssertEqual(MinimumSizeSubarraySum.solve(11, [1, 1, 1, 1, 1]), 0)
    }

    func testHandlesSingleElementSolution()
    {
        XCTAssertEqual(MinimumSizeSubarraySum.solve(4, [4]), 1)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(MinimumSizeSubarraySum.solve(15, [5, 1, 3, 5, 10, 7, 4, 9, 2, 8, 1, 6]), 2)
    }
}
