import XCTest
@testable import AlgorithmArray

final class ValidSudokuTests: XCTestCase
{
    func testAcceptsCanonicalValidBoard()
    {
        XCTAssertTrue(
            ValidSudoku.solve(
                board(
                    [
                        "53..7....",
                        "6..195...",
                        ".98....6.",
                        "8...6...3",
                        "4..8.3..1",
                        "7...2...6",
                        ".6....28.",
                        "...419..5",
                        "....8..79",
                    ]
                )
            )
        )
    }

    func testRejectsBoardWithDuplicateInRow()
    {
        XCTAssertFalse(
            ValidSudoku.solve(
                board(
                    [
                        "53..7...5",
                        "6..195...",
                        ".98....6.",
                        "8...6...3",
                        "4..8.3..1",
                        "7...2...6",
                        ".6....28.",
                        "...419..5",
                        "....8..79",
                    ]
                )
            )
        )
    }

    func testRejectsBoardWithDuplicateInColumn()
    {
        XCTAssertFalse(
            ValidSudoku.solve(
                board(
                    [
                        "83..7....",
                        "6..195...",
                        ".98....6.",
                        "8...6...3",
                        "4..8.3..1",
                        "7...2...6",
                        ".6....28.",
                        "...419..5",
                        "....8..79",
                    ]
                )
            )
        )
    }

    func testRejectsBoardWithDuplicateInBox()
    {
        XCTAssertFalse(
            ValidSudoku.solve(
                board(
                    [
                        "53..7....",
                        "68.195...",
                        ".98....6.",
                        "8...6...3",
                        "4..8.3..1",
                        "7...2...6",
                        ".6....28.",
                        "...419..5",
                        "....8..79",
                    ]
                )
            )
        )
    }

    func testAcceptsSparseDebugFriendlyBoard()
    {
        XCTAssertTrue(
            ValidSudoku.solve(
                board(
                    [
                        "1.......2",
                        ".2.....3.",
                        "..3...4..",
                        "...4.5...",
                        "....6....",
                        "...7.8...",
                        "..8...9..",
                        ".9.....1.",
                        "2.......3",
                    ]
                )
            )
        )
    }

    private func board(_ rows: [String]) -> [[Character]]
    {
        rows.map(Array.init)
    }
}
