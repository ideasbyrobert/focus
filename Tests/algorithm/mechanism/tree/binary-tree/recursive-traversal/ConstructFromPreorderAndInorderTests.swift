import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class ConstructFromPreorderAndInorderTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = ConstructFromPreorderAndInorder.solve([3, 9, 20, 15, 7], [9, 3, 15, 20, 7])

        XCTAssertEqual(treeValuesInLevelOrder(root), [3, 9, 20, nil, nil, 15, 7])
    }

    func testHandlesSingleNode()
    {
        let root = ConstructFromPreorderAndInorder.solve([-1], [-1])

        XCTAssertEqual(treeValuesInLevelOrder(root), [-1])
    }

    func testHandlesLongDebugFriendlyTraversals()
    {
        let preorder = [8, 4, 2, 1, 3, 6, 5, 7, 12, 10, 9, 11, 14, 13, 15]
        let inorder = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
        let root = ConstructFromPreorderAndInorder.solve(preorder, inorder)

        XCTAssertEqual(treeValuesPreorder(root), preorder)
        XCTAssertEqual(treeValuesInOrder(root), inorder)
    }
}
