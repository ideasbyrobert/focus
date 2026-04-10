import XCTest
@testable import AlgorithmGraph

final class SnakesAndLaddersTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let board = [
            [-1, -1, -1, -1, -1, -1],
            [-1, -1, -1, -1, -1, -1],
            [-1, -1, -1, -1, -1, -1],
            [-1, 35, -1, -1, 13, -1],
            [-1, -1, -1, -1, -1, -1],
            [-1, 15, -1, -1, -1, -1],
        ]

        XCTAssertEqual(SnakesAndLadders.solve(board), 4)
    }

    func testHandlesSmallBoardWithoutSnakesOrLadders()
    {
        let board = [
            [-1, -1],
            [-1, -1],
        ]

        XCTAssertEqual(SnakesAndLadders.solve(board), 1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let board = [
            [-1, -1, -1, -1, -1],
            [-1, -1, -1, -1, -1],
            [-1, -1, -1, -1, -1],
            [-1, -1, -1, -1, -1],
            [-1, -1, -1, -1, -1],
        ]

        XCTAssertEqual(SnakesAndLadders.solve(board), 4)
    }
}
