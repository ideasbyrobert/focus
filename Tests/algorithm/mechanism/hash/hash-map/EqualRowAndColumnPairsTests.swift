import XCTest
@testable import AlgorithmHash

final class EqualRowAndColumnPairsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let grid = [
            [3, 2, 1],
            [1, 7, 6],
            [2, 7, 7],
        ]

        XCTAssertEqual(EqualRowAndColumnPairs.solve(grid), 1)
    }

    func testHandlesMultipleMatches()
    {
        let grid = [
            [1, 1, 1],
            [1, 1, 1],
            [1, 1, 1],
        ]

        XCTAssertEqual(EqualRowAndColumnPairs.solve(grid), 9)
    }

    func testHandlesNoMatches()
    {
        let grid = [
            [1, 2],
            [3, 4],
        ]

        XCTAssertEqual(EqualRowAndColumnPairs.solve(grid), 0)
    }

    func testHandlesLongDebugFriendlyMatrix()
    {
        let grid = [
            [1, 2, 3, 4],
            [5, 6, 7, 8],
            [1, 2, 3, 4],
            [5, 6, 7, 8],
        ]

        XCTAssertEqual(EqualRowAndColumnPairs.solve(grid), 0)
    }
}
