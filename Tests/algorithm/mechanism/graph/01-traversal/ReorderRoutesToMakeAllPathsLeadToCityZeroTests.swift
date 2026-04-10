import XCTest
@testable import AlgorithmGraph

final class ReorderRoutesToMakeAllPathsLeadToCityZeroTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let connections = [
            [0, 1],
            [1, 3],
            [2, 3],
            [4, 0],
            [4, 5],
        ]

        XCTAssertEqual(ReorderRoutesToMakeAllPathsLeadToCityZero.solve(6, connections), 3)
    }

    func testHandlesRoutesAlreadyLeadingToZero()
    {
        let connections = [
            [1, 0],
            [2, 0],
            [3, 2],
        ]

        XCTAssertEqual(ReorderRoutesToMakeAllPathsLeadToCityZero.solve(4, connections), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let connections = [
            [0, 1],
            [1, 2],
            [3, 2],
            [3, 4],
            [5, 4],
            [6, 5],
            [6, 7],
        ]

        XCTAssertEqual(ReorderRoutesToMakeAllPathsLeadToCityZero.solve(8, connections), 4)
    }
}
