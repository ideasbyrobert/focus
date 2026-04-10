import XCTest
@testable import AlgorithmSortAndTwoPointer

final class ContainerWithMostWaterTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(ContainerWithMostWater.solve([1, 8, 6, 2, 5, 4, 8, 3, 7]), 49)
    }

    func testHandlesShortInput()
    {
        XCTAssertEqual(ContainerWithMostWater.solve([1, 1]), 1)
    }

    func testHandlesDecreasingHeights()
    {
        XCTAssertEqual(ContainerWithMostWater.solve([5, 4, 3, 2, 1]), 6)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(ContainerWithMostWater.solve([2, 9, 1, 5, 6, 3, 8, 4, 7, 10, 2, 11]), 90)
    }
}
