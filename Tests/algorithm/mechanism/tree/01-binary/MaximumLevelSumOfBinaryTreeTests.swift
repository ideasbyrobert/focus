import XCTest
@testable import AlgorithmTree

final class MaximumLevelSumOfBinaryTreeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([1, 7, 0, 7, -8])

        XCTAssertEqual(MaximumLevelSumOfBinaryTree.solve(root), 2)
    }

    func testKeepsSmallestLevelWhenSumsTie()
    {
        let root = buildTree([5, 2, 3])

        XCTAssertEqual(MaximumLevelSumOfBinaryTree.solve(root), 1)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])

        XCTAssertEqual(MaximumLevelSumOfBinaryTree.solve(root), 4)
    }
}
