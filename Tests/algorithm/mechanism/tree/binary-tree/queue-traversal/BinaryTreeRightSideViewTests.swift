import XCTest
@testable import AlgorithmTree

final class BinaryTreeRightSideViewTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([1, 2, 3, nil, 5, nil, 4])

        XCTAssertEqual(BinaryTreeRightSideView.solve(root), [1, 3, 4])
    }

    func testHandlesLeftLeaningTree()
    {
        let root = buildTree([1, 2, nil, 3, nil, nil, nil, 4])

        XCTAssertEqual(BinaryTreeRightSideView.solve(root), [1, 2, 3, 4])
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])

        XCTAssertEqual(BinaryTreeRightSideView.solve(root), [10, 14, 16, 18])
    }
}
