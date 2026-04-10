import XCTest
@testable import AlgorithmSlidingWindow

final class MaximumAverageSubarrayITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MaximumAverageSubarrayI.solve([1, 12, -5, -6, 50, 3], 4), 12.75, accuracy: 0.000_001)
    }

    func testHandlesAllNegativeInput()
    {
        XCTAssertEqual(MaximumAverageSubarrayI.solve([-3, -5, -1, -7], 2), -3.0, accuracy: 0.000_001)
    }

    func testHandlesWholeArrayWindow()
    {
        XCTAssertEqual(MaximumAverageSubarrayI.solve([5, 5, 5], 3), 5.0, accuracy: 0.000_001)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(MaximumAverageSubarrayI.solve([2, 3, 5, 1, 6, 4, 2, 8, 1, 9], 4), 5.0, accuracy: 0.000_001)
    }
}
