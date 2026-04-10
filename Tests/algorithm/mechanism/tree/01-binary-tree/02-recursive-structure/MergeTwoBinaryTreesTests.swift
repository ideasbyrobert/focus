import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class MergeTwoBinaryTreesTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let first = buildTree([1, 3, 2, 5])
        let second = buildTree([2, 1, 3, nil, 4, nil, 7])
        let mergedRoot = MergeTwoBinaryTrees.solve(first, second)

        XCTAssertEqual(treeValuesInLevelOrder(mergedRoot), [3, 4, 5, 5, 4, nil, 7])
    }

    func testHandlesOneEmptyTree()
    {
        let mergedRoot = MergeTwoBinaryTrees.solve(nil, buildTree([1, 2, 3]))

        XCTAssertEqual(treeValuesInLevelOrder(mergedRoot), [1, 2, 3])
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let first = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])
        let second = buildTree([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
        let mergedRoot = MergeTwoBinaryTrees.solve(first, second)

        XCTAssertEqual(
            treeValuesInLevelOrder(mergedRoot),
            [11, 8, 17, 8, 13, 18, 23, 10, 14, 17, 20, 23, 26, 29, 33]
        )
    }
}
