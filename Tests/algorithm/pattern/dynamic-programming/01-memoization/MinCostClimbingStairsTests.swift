import XCTest
@testable import AlgorithmDynamicProgramming

final class MinCostClimbingStairsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MinCostClimbingStairs.solve([10, 15, 20]), 15)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(MinCostClimbingStairs.solve([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]), 6)
    }

    func testHandlesSmallInput()
    {
        XCTAssertEqual(MinCostClimbingStairs.solve([5, 8]), 5)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(MinCostClimbingStairs.solve([4, 7, 2, 9, 3, 8, 1, 6, 2, 5, 4, 7]), 16)
    }
}
