import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class DiameterOfBinaryTreeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([1, 2, 3, 4, 5])

        XCTAssertEqual(DiameterOfBinaryTree.solve(root), 3)
    }

    func testHandlesSingleNode()
    {
        XCTAssertEqual(DiameterOfBinaryTree.solve(buildTree([1])), 0)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])

        XCTAssertEqual(DiameterOfBinaryTree.solve(root), 6)
    }
}
