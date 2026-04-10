import XCTest
@testable import AlgorithmDivideAndConquer

final class ConvertSortedArrayToBSTTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let root = ConvertSortedArrayToBST.solve([-10, -3, 0, 5, 9])

        XCTAssertEqual(root?.value, 0)
        XCTAssertEqual(treeValuesInOrder(root), [-10, -3, 0, 5, 9])
        XCTAssertTrue(isHeightBalanced(root))
    }

    func testHandlesEmptyInput()
    {
        XCTAssertNil(ConvertSortedArrayToBST.solve([]))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let values = Array(-7...7)
        let root = ConvertSortedArrayToBST.solve(values)

        XCTAssertEqual(treeValuesInOrder(root), values)
        XCTAssertTrue(isHeightBalanced(root))
    }
}
