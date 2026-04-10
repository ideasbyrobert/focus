import XCTest
@testable import AlgorithmHeap

final class KthLargestElementInAnArrayTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(KthLargestElementInAnArray.solve([3, 2, 1, 5, 6, 4], kthLargest: 2), 5)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(KthLargestElementInAnArray.solve([3, 2, 3, 1, 2, 4, 5, 5, 6], kthLargest: 4), 4)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            KthLargestElementInAnArray.solve([12, 7, 19, 3, 25, 14, 8, 17, 30, 1, 9, 22], kthLargest: 5),
            17
        )
    }

    func testHandlesRepeatedValues()
    {
        XCTAssertEqual(KthLargestElementInAnArray.solve([5, 5, 5, 5], kthLargest: 2), 5)
    }
}
