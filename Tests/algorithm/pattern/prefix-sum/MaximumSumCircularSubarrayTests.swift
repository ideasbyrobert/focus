import XCTest
@testable import AlgorithmPrefixSum

final class MaximumSumCircularSubarrayTests: XCTestCase
{
    func testHandlesCanonicalWrapAroundInput()
    {
        XCTAssertEqual(MaximumSumCircularSubarray.solve([1, -2, 3, -2]), 3)
    }

    func testHandlesCanonicalCircularMaximum()
    {
        XCTAssertEqual(MaximumSumCircularSubarray.solve([5, -3, 5]), 10)
    }

    func testHandlesAllNegativeInput()
    {
        XCTAssertEqual(MaximumSumCircularSubarray.solve([-3, -2, -3]), -2)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(MaximumSumCircularSubarray.solve([8, -1, 3, 4, -6, 7, -2, 5, -4, 6, -3, 2]), 25)
    }
}
