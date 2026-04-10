import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class CountGoodNodesInBinaryTreeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([3, 1, 4, 3, nil, 1, 5])

        XCTAssertEqual(CountGoodNodesInBinaryTree.solve(root), 4)
    }

    func testHandlesDecreasingTree()
    {
        let root = buildTree([5, 4, 3, 2, 1])

        XCTAssertEqual(CountGoodNodesInBinaryTree.solve(root), 1)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 4, 10, 2, 6, 9, 12, 1, 3, 5, 7, 8, 11, 12, 15])

        XCTAssertEqual(CountGoodNodesInBinaryTree.solve(root), 6)
    }
}
