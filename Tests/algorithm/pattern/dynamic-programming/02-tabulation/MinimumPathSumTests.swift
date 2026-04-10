import XCTest
@testable import AlgorithmDynamicProgramming

final class MinimumPathSumTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MinimumPathSum.solve([[1, 3, 1], [1, 5, 1], [4, 2, 1]]), 7)
    }

    func testHandlesSingleRow()
    {
        XCTAssertEqual(MinimumPathSum.solve([[1, 2, 3]]), 6)
    }

    func testHandlesSingleColumn()
    {
        XCTAssertEqual(MinimumPathSum.solve([[1], [2], [3]]), 6)
    }

    func testHandlesLongDebugFriendlyGrid()
    {
        XCTAssertEqual(
            MinimumPathSum.solve([
                [5, 1, 3, 9, 2],
                [4, 8, 1, 2, 7],
                [6, 2, 9, 5, 1],
                [3, 4, 2, 1, 8],
            ]),
            26
        )
    }
}
