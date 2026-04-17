import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class PopulatingNextRightPointersIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildNextTree([1, 2, 3, 4, 5, nil, 7])
        let connectedRoot = PopulatingNextRightPointersII.solve(root)

        XCTAssertEqual(nextPointerLevels(connectedRoot), [[1], [2, 3], [4, 5, 7]])
    }

    func testHandlesSingleNode()
    {
        let root = buildNextTree([1])
        let connectedRoot = PopulatingNextRightPointersII.solve(root)

        XCTAssertEqual(nextPointerLevels(connectedRoot), [[1]])
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildNextTree([10, 6, 14, 4, 8, 12, 16, 2, nil, 7, 9, 11, 13, nil, 18])
        let connectedRoot = PopulatingNextRightPointersII.solve(root)

        XCTAssertEqual(nextPointerLevels(connectedRoot), [[10], [6, 14], [4, 8, 12, 16], [2, 7, 9, 11, 13, 18]])
    }
}
