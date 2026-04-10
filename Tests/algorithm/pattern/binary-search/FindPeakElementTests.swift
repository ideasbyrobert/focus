import XCTest
@testable import AlgorithmBinarySearch

final class FindPeakElementTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let numbers = [1, 2, 3, 1]
        let peakIndex = FindPeakElement.solve(numbers)

        XCTAssertEqual(peakIndex, 2)
    }

    func testHandlesMultipleValidPeaks()
    {
        let numbers = [1, 2, 1, 3, 5, 6, 4]
        let peakIndex = FindPeakElement.solve(numbers)

        XCTAssertTrue([1, 5].contains(peakIndex))
    }

    func testHandlesSingleValueInput()
    {
        XCTAssertEqual(FindPeakElement.solve([1]), 0)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        let numbers = [1, 4, 7, 11, 15, 18, 17, 13, 9, 6, 3]

        XCTAssertEqual(FindPeakElement.solve(numbers), 5)
    }
}
