import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class LeafSimilarTreesTests: XCTestCase
{
    func testHandlesCanonicalLeafSimilarTrees()
    {
        let first = buildTree([3, 5, 1, 6, 2, 9, 8, nil, nil, 7, 4])
        let second = buildTree([3, 5, 1, 6, 7, 4, 2, nil, nil, nil, nil, nil, nil, 9, 8])

        XCTAssertTrue(LeafSimilarTrees.solve(first, second))
    }

    func testRejectsDifferentLeafOrders()
    {
        let first = buildTree([1, 2, 3])
        let second = buildTree([1, 3, 2])

        XCTAssertFalse(LeafSimilarTrees.solve(first, second))
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let first = buildTree([8, 4, 12, 2, 6, 10, 14, 1, 3, 5, 7, 9, 11, 13, 15])
        let second = buildTree([20, 8, 24, 1, 3, 9, 11, nil, nil, 5, 7, 13, 15])

        XCTAssertFalse(LeafSimilarTrees.solve(first, second))
    }
}
