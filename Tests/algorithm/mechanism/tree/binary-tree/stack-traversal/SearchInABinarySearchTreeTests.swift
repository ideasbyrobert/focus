import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class SearchInABinarySearchTreeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([4, 2, 7, 1, 3])
        let foundRoot = SearchInABinarySearchTree.solve(root, 2)

        XCTAssertEqual(treeValuesInLevelOrder(foundRoot), [2, 1, 3])
    }

    func testReturnsNilWhenValueIsMissing()
    {
        let root = buildTree([4, 2, 7, 1, 3])

        XCTAssertNil(SearchInABinarySearchTree.solve(root, 5))
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 4, 12, 2, 6, 10, 14, 1, 3, 5, 7, 9, 11, 13, 15])
        let foundRoot = SearchInABinarySearchTree.solve(root, 10)

        XCTAssertEqual(treeValuesInLevelOrder(foundRoot), [10, 9, 11])
    }
}
