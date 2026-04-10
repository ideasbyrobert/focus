import XCTest
@testable import AlgorithmBinarySearch

final class FindFirstAndLastPositionTests: XCTestCase
{
    func testHandlesCanonicalHit()
    {
        XCTAssertEqual(FindFirstAndLastPosition.solve([5, 7, 7, 8, 8, 10], target: 8), [3, 4])
    }

    func testHandlesCanonicalMiss()
    {
        XCTAssertEqual(FindFirstAndLastPosition.solve([5, 7, 7, 8, 8, 10], target: 6), [-1, -1])
    }

    func testHandlesSingleElementInput()
    {
        XCTAssertEqual(FindFirstAndLastPosition.solve([2], target: 2), [0, 0])
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(FindFirstAndLastPosition.solve([1, 2, 4, 4, 4, 4, 7, 9, 9, 11, 13, 13, 13], target: 13), [10, 12])
    }
}
