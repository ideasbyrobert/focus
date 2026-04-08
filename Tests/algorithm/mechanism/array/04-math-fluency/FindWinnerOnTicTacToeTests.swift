import XCTest
@testable import AlgorithmArray

final class FindWinnerOnTicTacToeTests: XCTestCase
{
    func testFindsCanonicalWinnerForA()
    {
        XCTAssertEqual(
            FindWinnerOnTicTacToe.solve(
                [
                    [0, 0],
                    [2, 0],
                    [1, 1],
                    [2, 1],
                    [2, 2],
                ]
            ),
            "A"
        )
    }

    func testFindsWinnerForB()
    {
        XCTAssertEqual(
            FindWinnerOnTicTacToe.solve(
                [
                    [0, 0],
                    [1, 0],
                    [0, 1],
                    [1, 1],
                    [2, 2],
                    [1, 2],
                ]
            ),
            "B"
        )
    }

    func testReportsDraw()
    {
        XCTAssertEqual(
            FindWinnerOnTicTacToe.solve(
                [
                    [0, 0],
                    [1, 1],
                    [2, 0],
                    [1, 0],
                    [1, 2],
                    [2, 1],
                    [0, 1],
                    [0, 2],
                    [2, 2],
                ]
            ),
            "Draw"
        )
    }

    func testReportsPendingGame()
    {
        XCTAssertEqual(
            FindWinnerOnTicTacToe.solve(
                [
                    [0, 0],
                    [1, 1],
                ]
            ),
            "Pending"
        )
    }

    func testHandlesDiagonalWinLateInGame()
    {
        XCTAssertEqual(
            FindWinnerOnTicTacToe.solve(
                [
                    [0, 2],
                    [0, 0],
                    [1, 1],
                    [1, 0],
                    [2, 0],
                    [2, 2],
                    [2, 1],
                ]
            ),
            "A"
        )
    }
}
