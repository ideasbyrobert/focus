import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class MaximumDepthOfBinaryTreeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([3, 9, 20, nil, nil, 15, 7])

        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(root), 3)
    }

    func testHandlesEmptyTree()
    {
        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(nil), 0)
    }

    func testHandlesSingleNode()
    {
        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(buildTree([1])), 1)
    }

    func testHandlesSkewedTree()
    {
        let root = buildTree([1, 2, nil, 3, nil, nil, nil, 4])

        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(root), 4)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])

        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(root), 4)
    }
}
