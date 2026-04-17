import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class LongestZigZagPathInBinaryTreeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = TreeNode(1)
        root.right = TreeNode(1)
        root.right?.left = TreeNode(1)
        root.right?.left?.right = TreeNode(1)

        XCTAssertEqual(LongestZigZagPathInBinaryTree.solve(root), 3)
    }

    func testHandlesSingleNode()
    {
        XCTAssertEqual(LongestZigZagPathInBinaryTree.solve(buildTree([1])), 0)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = TreeNode(1)
        root.left = TreeNode(2)
        root.left?.right = TreeNode(3)
        root.left?.right?.left = TreeNode(4)
        root.left?.right?.left?.right = TreeNode(5)
        root.left?.right?.left?.right?.left = TreeNode(6)

        XCTAssertEqual(LongestZigZagPathInBinaryTree.solve(root), 5)
    }
}
