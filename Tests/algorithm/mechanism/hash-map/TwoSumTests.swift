import XCTest
@testable import AlgorithmHashMap

final class TwoSumTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(TwoSum.solve([2, 7, 11, 15], target: 9), [0, 1])
    }

    func testHandlesRepeatedValues()
    {
        XCTAssertEqual(TwoSum.solve([3, 3], target: 6), [0, 1])
    }

    func testHandlesNegativeValues()
    {
        XCTAssertEqual(TwoSum.solve([-3, 4, 3, 90], target: 0), [0, 2])
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(TwoSum.solve([8, 1, 14, 7, 11, 5, 3, 9, 2, 6, 13, 4], target: 15), [1, 2])
    }
}
