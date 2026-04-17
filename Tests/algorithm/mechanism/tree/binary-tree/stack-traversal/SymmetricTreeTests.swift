import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class SymmetricTreeTests: XCTestCase
{
    func testHandlesCanonicalSymmetricTree()
    {
        let root = buildTree([1, 2, 2, 3, 4, 4, 3])

        XCTAssertTrue(SymmetricTree.solve(root))
    }

    func testRejectsCanonicalAsymmetricTree()
    {
        let root = buildTree([1, 2, 2, nil, 3, nil, 3])

        XCTAssertFalse(SymmetricTree.solve(root))
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 6, 6, 5, 7, 7, 5, 4, nil, nil, 9, 9, nil, nil, 4])

        XCTAssertTrue(SymmetricTree.solve(root))
    }
}
