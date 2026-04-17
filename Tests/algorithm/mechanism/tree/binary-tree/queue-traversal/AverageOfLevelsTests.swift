import XCTest
@testable import AlgorithmTree

final class AverageOfLevelsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([3, 9, 20, nil, nil, 15, 7])

        XCTAssertEqual(AverageOfLevels.solve(root), [3.0, 14.5, 11.0])
    }

    func testHandlesSingleNode()
    {
        let root = buildTree([5])

        XCTAssertEqual(AverageOfLevels.solve(root), [5.0])
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([10, 6, 14, 4, 8, 12, 16, 2, 5, 7, 9, 11, 13, 15, 18])

        XCTAssertEqual(AverageOfLevels.solve(root), [10.0, 10.0, 10.0, 10.0])
    }
}
