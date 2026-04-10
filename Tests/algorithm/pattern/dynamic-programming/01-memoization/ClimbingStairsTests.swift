import XCTest
@testable import AlgorithmDynamicProgramming

final class ClimbingStairsTests: XCTestCase
{
    func testHandlesCanonicalInputs()
    {
        XCTAssertEqual(ClimbingStairs.solve(2), 2)
        XCTAssertEqual(ClimbingStairs.solve(3), 3)
    }

    func testHandlesSingleStep()
    {
        XCTAssertEqual(ClimbingStairs.solve(1), 1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(ClimbingStairs.solve(10), 89)
    }

    func testHandlesLargerInput()
    {
        XCTAssertEqual(ClimbingStairs.solve(15), 987)
    }
}
