import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class FlattenBinaryTreeToLinkedListTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([1, 2, 5, 3, 4, nil, 6])

        FlattenBinaryTreeToLinkedList.solve(root)

        XCTAssertEqual(flattenedTreeValues(root), [1, 2, 3, 4, 5, 6])
        XCTAssertTrue(flattenedTreeHasNoLeftPointers(root))
    }

    func testHandlesSingleNode()
    {
        let root = buildTree([1])

        FlattenBinaryTreeToLinkedList.solve(root)

        XCTAssertEqual(flattenedTreeValues(root), [1])
        XCTAssertTrue(flattenedTreeHasNoLeftPointers(root))
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 4, 12, 2, 6, 10, 14, 1, 3, 5, 7, 9, 11, 13, 15])

        FlattenBinaryTreeToLinkedList.solve(root)

        XCTAssertEqual(flattenedTreeValues(root), [8, 4, 2, 1, 3, 6, 5, 7, 12, 10, 9, 11, 14, 13, 15])
        XCTAssertTrue(flattenedTreeHasNoLeftPointers(root))
    }
}
