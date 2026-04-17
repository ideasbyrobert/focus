import XCTest
@testable import AlgorithmTree

final class LevelOrderTraversalTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([3, 9, 20, nil, nil, 15, 7])

        XCTAssertEqual(LevelOrderTraversal.solve(root), [[3], [9, 20], [15, 7]])
    }

    func testHandlesEmptyTree()
    {
        XCTAssertEqual(LevelOrderTraversal.solve(nil), [])
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])

        XCTAssertEqual(
            LevelOrderTraversal.solve(root),
            [[10], [6, 14], [4, 8, 12, 16], [2, 5, 7, 9, 11, 13, 15, 18]]
        )
    }
}
