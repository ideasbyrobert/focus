import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class PathSumTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, nil, 1])

        XCTAssertTrue(PathSum.solve(root, 22))
    }

    func testRejectsMissingTargetPath()
    {
        let root = buildTree([1, 2, 3])

        XCTAssertFalse(PathSum.solve(root, 5))
    }

    func testHandlesNegativeValues()
    {
        let root = buildTree([-2, nil, -3])

        XCTAssertTrue(PathSum.solve(root, -5))
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])

        XCTAssertTrue(PathSum.solve(root, 22))
    }
}
