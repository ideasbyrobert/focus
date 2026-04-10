import XCTest
@testable import AlgorithmTree

final class KthSmallestElementInBSTTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([3, 1, 4, nil, 2])

        XCTAssertEqual(KthSmallestElementInBST.solve(root, 1), 1)
    }

    func testHandlesDeeperCanonicalInput()
    {
        let root = buildTree([5, 3, 6, 2, 4, nil, nil, 1])

        XCTAssertEqual(KthSmallestElementInBST.solve(root, 3), 3)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 4, 12, 2, 6, 10, 14, 1, 3, 5, 7, 9, 11, 13, 15])

        XCTAssertEqual(KthSmallestElementInBST.solve(root, 10), 10)
    }
}
