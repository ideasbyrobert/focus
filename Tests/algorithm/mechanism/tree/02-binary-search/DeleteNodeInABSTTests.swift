import XCTest
@testable import AlgorithmTree

final class DeleteNodeInABSTTests: XCTestCase
{
    func testDeletesLeafNode()
    {
        let root = buildTree([5, 3, 6, 2, 4, nil, 7])
        let updatedRoot = DeleteNodeInABST.solve(root, 2)

        XCTAssertEqual(treeValuesInLevelOrder(updatedRoot), [5, 3, 6, nil, 4, nil, 7])
    }

    func testDeletesNodeWithTwoChildren()
    {
        let root = buildTree([5, 3, 6, 2, 4, nil, 7])
        let updatedRoot = DeleteNodeInABST.solve(root, 3)

        XCTAssertEqual(treeValuesInLevelOrder(updatedRoot), [5, 4, 6, 2, nil, nil, 7])
    }

    func testDeletesRootNode()
    {
        let root = buildTree([5, 3, 6, 2, 4, nil, 7])
        let updatedRoot = DeleteNodeInABST.solve(root, 5)

        XCTAssertEqual(treeValuesInLevelOrder(updatedRoot), [6, 3, 7, 2, 4])
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 4, 12, 2, 6, 10, 14, 1, 3, 5, 7, 9, 11, 13, 15])
        let updatedRoot = DeleteNodeInABST.solve(root, 10)

        XCTAssertTrue(ValidateBST.solve(updatedRoot))
        XCTAssertEqual(treeValuesInOrder(updatedRoot), [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15])
    }
}
