import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class LowestCommonAncestorTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4])
        let first = findNode(in: root, value: 5)
        let second = findNode(in: root, value: 1)

        XCTAssertEqual(LowestCommonAncestor.solve(root, first, second)?.value, 3)
    }

    func testHandlesAncestorBeingOneOfTheTargets()
    {
        let root = buildTree([3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4])
        let first = findNode(in: root, value: 5)
        let second = findNode(in: root, value: 4)

        XCTAssertEqual(LowestCommonAncestor.solve(root, first, second)?.value, 5)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 4, 12, 2, 6, 10, 14, 1, 3, 5, 7, 9, 11, 13, 15])
        let first = findNode(in: root, value: 5)
        let second = findNode(in: root, value: 11)

        XCTAssertEqual(LowestCommonAncestor.solve(root, first, second)?.value, 8)
    }
}
