import XCTest
@testable import AlgorithmBacktracking

final class WordSearchIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let board: [[Character]] = [
            Array("oaan"),
            Array("etae"),
            Array("ihkr"),
            Array("iflv"),
        ]

        XCTAssertEqual(
            normalized(WordSearchII.solve(board, ["oath", "pea", "eat", "rain"])),
            ["eat", "oath"]
        )
    }

    func testHandlesNoMatches()
    {
        let board: [[Character]] = [
            Array("ab"),
            Array("cd"),
        ]

        XCTAssertEqual(WordSearchII.solve(board, ["ef", "gh"]), [])
    }

    func testHandlesDuplicateDiscoveriesOnlyOnce()
    {
        let board: [[Character]] = [
            Array("aa"),
            Array("aa"),
        ]

        XCTAssertEqual(normalized(WordSearchII.solve(board, ["aa", "aaaa"])), ["aa", "aaaa"])
    }

    func testHandlesLongDebugFriendlyGrid()
    {
        let board: [[Character]] = [
            Array("oaan"),
            Array("etae"),
            Array("ihkr"),
            Array("iflv"),
        ]

        XCTAssertEqual(
            normalized(WordSearchII.solve(board, ["oath", "eat", "hklf", "hf", "oat"])),
            ["eat", "hf", "hklf", "oat", "oath"]
        )
    }

    private func normalized(_ values: [String]) -> [String]
    {
        values.sorted()
    }
}
