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

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])

        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(root), 4)
    }
}
