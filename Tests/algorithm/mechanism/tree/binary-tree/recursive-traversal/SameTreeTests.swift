import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class SameTreeTests: XCTestCase
{
    func testHandlesCanonicalEqualTrees()
    {
        let first = buildTree([1, 2, 3])
        let second = buildTree([1, 2, 3])

        XCTAssertTrue(SameTree.solve(first, second))
    }

    func testRejectsDifferentShapes()
    {
        let first = buildTree([1, 2])
        let second = buildTree([1, nil, 2])

        XCTAssertFalse(SameTree.solve(first, second))
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let first = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])
        let second = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])

        XCTAssertTrue(SameTree.solve(first, second))
    }
}
