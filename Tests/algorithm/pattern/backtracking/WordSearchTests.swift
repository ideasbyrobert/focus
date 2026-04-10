import XCTest
@testable import AlgorithmBacktracking

final class WordSearchTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let board: [[Character]] = [
            Array("ABCE"),
            Array("SFCS"),
            Array("ADEE"),
        ]

        XCTAssertTrue(WordSearch.solve(board, "ABCCED"))
    }

    func testRejectsCanonicalMissingPath()
    {
        let board: [[Character]] = [
            Array("ABCE"),
            Array("SFCS"),
            Array("ADEE"),
        ]

        XCTAssertFalse(WordSearch.solve(board, "ABCB"))
    }

    func testHandlesSingleCellBoard()
    {
        XCTAssertTrue(WordSearch.solve([Array("A")], "A"))
    }

    func testHandlesLongDebugFriendlyGrid()
    {
        let board: [[Character]] = [
            Array("ABCD"),
            Array("LMNE"),
            Array("KPOF"),
            Array("JIHG"),
        ]

        XCTAssertTrue(WordSearch.solve(board, "ABCDEFGHIJKLMNOP"))
    }
}
