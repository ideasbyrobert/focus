import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class InvertBinaryTreeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([4, 2, 7, 1, 3, 6, 9])
        let invertedRoot = InvertBinaryTree.solve(root)

        XCTAssertEqual(treeValuesInLevelOrder(invertedRoot), [4, 7, 2, 9, 6, 3, 1])
    }

    func testHandlesSingleNode()
    {
        let root = buildTree([1])
        let invertedRoot = InvertBinaryTree.solve(root)

        XCTAssertEqual(treeValuesInLevelOrder(invertedRoot), [1])
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])
        let invertedRoot = InvertBinaryTree.solve(root)

        XCTAssertEqual(
            treeValuesInLevelOrder(invertedRoot),
            [10, 14, 6, 16, 12, 8, 4, 18, 15, 13, 11, 9, 7, 5, 2]
        )
    }
}
