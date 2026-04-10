import XCTest
@testable import AlgorithmGraph

final class RottingOrangesTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let grid = [
            [2, 1, 1],
            [1, 1, 0],
            [0, 1, 1],
        ]

        XCTAssertEqual(RottingOranges.solve(grid), 4)
    }

    func testReturnsNegativeOneWhenFreshOrangeCannotBeReached()
    {
        let grid = [
            [2, 1, 1],
            [0, 1, 1],
            [1, 0, 1],
        ]

        XCTAssertEqual(RottingOranges.solve(grid), -1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let grid = [[2, 1, 1, 1, 1, 1, 1, 1, 1, 1]]

        XCTAssertEqual(RottingOranges.solve(grid), 9)
    }
}
