import XCTest
@testable import AlgorithmHash

final class MaxNumberOfKSumPairsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MaxNumberOfKSumPairs.solve([1, 2, 3, 4], target: 5), 2)
    }

    func testHandlesDuplicateValues()
    {
        XCTAssertEqual(MaxNumberOfKSumPairs.solve([3, 1, 3, 4, 3], target: 6), 1)
    }

    func testHandlesNoPairs()
    {
        XCTAssertEqual(MaxNumberOfKSumPairs.solve([1, 2, 3], target: 100), 0)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(MaxNumberOfKSumPairs.solve([5, 1, 9, 3, 7, 2, 8, 4, 6, 10, 0, 5], target: 10), 6)
    }
}
