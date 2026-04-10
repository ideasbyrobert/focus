import XCTest
@testable import AlgorithmTree

final class MinAbsoluteDifferenceInBSTTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = buildTree([4, 2, 6, 1, 3])

        XCTAssertEqual(MinAbsoluteDifferenceInBST.solve(root), 1)
    }

    func testHandlesSeparatedValues()
    {
        let root = buildTree([1, 0, 48, nil, nil, 12, 49])

        XCTAssertEqual(MinAbsoluteDifferenceInBST.solve(root), 1)
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 3, 10, 1, 6, 9, 14, nil, nil, 4, 7, nil, nil, 13, 15])

        XCTAssertEqual(MinAbsoluteDifferenceInBST.solve(root), 1)
    }
}
