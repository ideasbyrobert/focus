import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class ConstructFromInorderAndPostorderTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = ConstructFromInorderAndPostorder.solve([9, 3, 15, 20, 7], [9, 15, 7, 20, 3])

        XCTAssertEqual(treeValuesInLevelOrder(root), [3, 9, 20, nil, nil, 15, 7])
    }

    func testHandlesSingleNode()
    {
        let root = ConstructFromInorderAndPostorder.solve([-1], [-1])

        XCTAssertEqual(treeValuesInLevelOrder(root), [-1])
    }

    func testHandlesLongDebugFriendlyTraversals()
    {
        let inorder = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
        let postorder = [1, 3, 2, 5, 7, 6, 4, 9, 11, 10, 13, 15, 14, 12, 8]
        let root = ConstructFromInorderAndPostorder.solve(inorder, postorder)

        XCTAssertEqual(treeValuesInOrder(root), inorder)
        XCTAssertEqual(treeValuesPostorder(root), postorder)
    }
}
