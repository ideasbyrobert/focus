import XCTest
@testable import AlgorithmDynamicProgramming

final class UniquePathsIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(UniquePathsII.solve([[0, 0, 0], [0, 1, 0], [0, 0, 0]]), 2)
    }

    func testHandlesBlockedStart()
    {
        XCTAssertEqual(UniquePathsII.solve([[1]]), 0)
    }

    func testHandlesBlockedEnd()
    {
        XCTAssertEqual(UniquePathsII.solve([[0, 0], [0, 1]]), 0)
    }

    func testHandlesLongDebugFriendlyGrid()
    {
        XCTAssertEqual(
            UniquePathsII.solve([
                [0, 0, 0, 0, 0],
                [0, 1, 0, 1, 0],
                [0, 0, 0, 0, 0],
                [1, 0, 1, 0, 0],
            ]),
            5
        )
    }
}
