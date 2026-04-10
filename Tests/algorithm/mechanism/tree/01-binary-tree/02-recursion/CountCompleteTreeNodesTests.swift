import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class CountCompleteTreeNodesTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([1, 2, 3, 4, 5, 6])

        XCTAssertEqual(CountCompleteTreeNodes.solve(root), 6)
    }

    func testHandlesEmptyTree()
    {
        XCTAssertEqual(CountCompleteTreeNodes.solve(nil), 0)
    }

    func testHandlesPerfectTree()
    {
        let root = buildTree([1, 2, 3, 4, 5, 6, 7])

        XCTAssertEqual(CountCompleteTreeNodes.solve(root), 7)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])

        XCTAssertEqual(CountCompleteTreeNodes.solve(root), 15)
    }
}
