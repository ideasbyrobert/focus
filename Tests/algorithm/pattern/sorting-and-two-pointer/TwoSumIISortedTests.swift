import XCTest
@testable import AlgorithmSortingAndTwoPointer

final class TwoSumIISortedTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(TwoSumIISorted.solve([2, 7, 11, 15], target: 9), [1, 2])
    }

    func testHandlesNegativeValues()
    {
        XCTAssertEqual(TwoSumIISorted.solve([-5, -2, 0, 3, 8, 12], target: 6), [2, 5])
    }

    func testHandlesRepeatedValues()
    {
        XCTAssertEqual(TwoSumIISorted.solve([1, 2, 3, 4, 4, 9], target: 8), [4, 5])
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(TwoSumIISorted.solve([1, 3, 4, 6, 8, 11, 14, 18, 21, 25, 30, 34], target: 39), [7, 10])
    }
}
