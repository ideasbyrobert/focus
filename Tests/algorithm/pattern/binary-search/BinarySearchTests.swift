import XCTest
@testable import AlgorithmBinarySearch

final class BinarySearchTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(BinarySearch.solve([-1, 0, 3, 5, 9, 12], target: 9), 4)
    }

    func testReturnsNegativeOneWhenTargetIsMissing()
    {
        XCTAssertEqual(BinarySearch.solve([-1, 0, 3, 5, 9, 12], target: 2), -1)
    }

    func testHandlesSingleValueInput()
    {
        XCTAssertEqual(BinarySearch.solve([5], target: 5), 0)
        XCTAssertEqual(BinarySearch.solve([5], target: 7), -1)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(BinarySearch.solve([1, 4, 7, 9, 13, 18, 21, 25, 29, 34, 40, 47, 55], target: 34), 9)
    }
}
