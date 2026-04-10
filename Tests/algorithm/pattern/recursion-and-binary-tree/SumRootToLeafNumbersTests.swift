import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class SumRootToLeafNumbersTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([1, 2, 3])

        XCTAssertEqual(SumRootToLeafNumbers.solve(root), 25)
    }

    func testHandlesSecondCanonicalInput()
    {
        let root = buildTree([4, 9, 0, 5, 1])

        XCTAssertEqual(SumRootToLeafNumbers.solve(root), 1026)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 3, 9, 1, 4, 7, 6])

        XCTAssertEqual(SumRootToLeafNumbers.solve(root), 3458)
    }
}
