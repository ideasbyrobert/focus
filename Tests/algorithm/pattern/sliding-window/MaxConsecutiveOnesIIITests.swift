import XCTest
@testable import AlgorithmSlidingWindow

final class MaxConsecutiveOnesIIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MaxConsecutiveOnesIII.solve([1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0], 2), 6)
    }

    func testHandlesZeroFlipBudget()
    {
        XCTAssertEqual(MaxConsecutiveOnesIII.solve([0, 0, 1, 1, 1, 0, 0], 0), 3)
    }

    func testHandlesAllOnesInput()
    {
        XCTAssertEqual(MaxConsecutiveOnesIII.solve([1, 1, 1], 1), 3)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(MaxConsecutiveOnesIII.solve([1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1], 2), 8)
    }
}
