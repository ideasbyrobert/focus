import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class BinaryTreeMaximumPathSumTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([1, 2, 3])

        XCTAssertEqual(BinaryTreeMaximumPathSum.solve(root), 6)
    }

    func testHandlesNegativeCanonicalInput()
    {
        let root = buildTree([-10, 9, 20, nil, nil, 15, 7])

        XCTAssertEqual(BinaryTreeMaximumPathSum.solve(root), 42)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([10, 2, 10, 20, 1, nil, -25, nil, nil, nil, nil, 3, 4])

        XCTAssertEqual(BinaryTreeMaximumPathSum.solve(root), 42)
    }
}
