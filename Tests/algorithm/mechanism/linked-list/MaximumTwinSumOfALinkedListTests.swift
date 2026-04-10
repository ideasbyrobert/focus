import XCTest
@testable import AlgorithmLinkedList

final class MaximumTwinSumOfALinkedListTests: XCTestCase
{
    func testFindsCanonicalTwinSum()
    {
        XCTAssertEqual(MaximumTwinSumOfALinkedList.solve(buildList([5, 4, 2, 1])), 6)
    }

    func testFindsSecondCanonicalTwinSum()
    {
        XCTAssertEqual(MaximumTwinSumOfALinkedList.solve(buildList([4, 2, 2, 3])), 7)
    }

    func testHandlesTwoNodeList()
    {
        XCTAssertEqual(MaximumTwinSumOfALinkedList.solve(buildList([1, 100])), 101)
    }

    func testHandlesRepeatedValues()
    {
        XCTAssertEqual(MaximumTwinSumOfALinkedList.solve(buildList([1, 1, 1, 1, 1, 1])), 2)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            MaximumTwinSumOfALinkedList.solve(buildList([1, 10, 2, 9, 3, 8, 4, 7, 5, 6])),
            15
        )
    }
}
