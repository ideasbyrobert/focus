import XCTest
@testable import AlgorithmHeap

final class FindMedianFromDataStreamTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let finder = MedianFinder()

        finder.addNum(1)
        finder.addNum(2)

        XCTAssertEqual(finder.findMedian(), 1.5, accuracy: 0.000001)

        finder.addNum(3)

        XCTAssertEqual(finder.findMedian(), 2.0, accuracy: 0.000001)
    }

    func testHandlesDuplicatesAndNegativeValues()
    {
        let finder = MedianFinder()

        [-5, -1, -1, 4].forEach
        {
            finder.addNum($0)
        }

        XCTAssertEqual(finder.findMedian(), -1.0, accuracy: 0.000001)
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let finder = MedianFinder()
        let numbers = [5, 15, 1, 3, 8, 7, 9, 10, 6]

        let medians = numbers.map
        {
            number in

            finder.addNum(number)
            return finder.findMedian()
        }

        XCTAssertEqual(medians.count, 9)
        XCTAssertEqual(medians[0], 5.0, accuracy: 0.000001)
        XCTAssertEqual(medians[1], 10.0, accuracy: 0.000001)
        XCTAssertEqual(medians[2], 5.0, accuracy: 0.000001)
        XCTAssertEqual(medians[3], 4.0, accuracy: 0.000001)
        XCTAssertEqual(medians[4], 5.0, accuracy: 0.000001)
        XCTAssertEqual(medians[5], 6.0, accuracy: 0.000001)
        XCTAssertEqual(medians[6], 7.0, accuracy: 0.000001)
        XCTAssertEqual(medians[7], 7.5, accuracy: 0.000001)
        XCTAssertEqual(medians[8], 7.0, accuracy: 0.000001)
    }
}
