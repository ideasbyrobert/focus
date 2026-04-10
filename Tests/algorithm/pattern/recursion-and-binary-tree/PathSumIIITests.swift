import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class PathSumIIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([10, 5, -3, 3, 2, nil, 11, 3, -2, nil, 1])

        XCTAssertEqual(PathSumIII.solve(root, 8), 3)
    }

    func testHandlesNegativeValues()
    {
        let root = buildTree([1, -2, -3, 1, 3, -2, nil, -1])

        XCTAssertEqual(PathSumIII.solve(root, -1), 4)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 4, 12, 2, 6, 10, 14, 1, 3, 5, 7, 9, 11, 13, 15])

        XCTAssertEqual(PathSumIII.solve(root, 18), 1)
    }
}
