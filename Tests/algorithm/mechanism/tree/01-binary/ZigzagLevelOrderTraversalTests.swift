import XCTest
@testable import AlgorithmTree

final class ZigzagLevelOrderTraversalTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([3, 9, 20, nil, nil, 15, 7])

        XCTAssertEqual(ZigzagLevelOrderTraversal.solve(root), [[3], [20, 9], [15, 7]])
    }

    func testHandlesSingleNode()
    {
        let root = buildTree([1])

        XCTAssertEqual(ZigzagLevelOrderTraversal.solve(root), [[1]])
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])

        XCTAssertEqual(
            ZigzagLevelOrderTraversal.solve(root),
            [[10], [14, 6], [4, 8, 12, 16], [18, 15, 13, 11, 9, 7, 5, 2]]
        )
    }
}
