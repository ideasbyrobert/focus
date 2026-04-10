import XCTest
@testable import AlgorithmPrefixSum

final class MaximumSubarrayTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MaximumSubarray.solve([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6)
    }

    func testHandlesAllNegativeInput()
    {
        XCTAssertEqual(MaximumSubarray.solve([-3, -2, -5, -1]), -1)
    }

    func testHandlesSingleValueInput()
    {
        XCTAssertEqual(MaximumSubarray.solve([7]), 7)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(MaximumSubarray.solve([3, -1, 2, -5, 4, 6, -2, 1, -3, 5, -1, 2]), 12)
    }
}
