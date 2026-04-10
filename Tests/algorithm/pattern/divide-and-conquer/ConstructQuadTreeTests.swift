import XCTest
@testable import AlgorithmDivideAndConquer

final class ConstructQuadTreeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let grid = [
            [0, 1],
            [1, 0],
        ]

        XCTAssertEqual(quadTreeSnapshot(ConstructQuadTree.solve(grid)), "I(L0,L1,L1,L0)")
    }

    func testHandlesUniformGrid()
    {
        let grid = [
            [1, 1],
            [1, 1],
        ]

        XCTAssertEqual(quadTreeSnapshot(ConstructQuadTree.solve(grid)), "L1")
    }

    func testHandlesLongDebugFriendlyGrid()
    {
        let grid = [
            [1, 1, 1, 1, 0, 0, 0, 0],
            [1, 1, 1, 1, 0, 0, 0, 0],
            [1, 1, 0, 0, 0, 0, 0, 0],
            [1, 1, 0, 0, 0, 0, 0, 0],
            [1, 1, 1, 1, 0, 0, 0, 0],
            [1, 1, 1, 1, 0, 0, 0, 0],
            [1, 1, 1, 1, 0, 0, 0, 0],
            [1, 1, 1, 1, 0, 0, 0, 0],
        ]

        XCTAssertEqual(quadTreeSnapshot(ConstructQuadTree.solve(grid)), "I(I(L1,L1,L1,L0),L0,L1,L0)")
    }
}
