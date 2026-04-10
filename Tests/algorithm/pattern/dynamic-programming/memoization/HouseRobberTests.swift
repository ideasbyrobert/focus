import XCTest
@testable import AlgorithmDynamicProgramming

final class HouseRobberTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(HouseRobber.solve([1, 2, 3, 1]), 4)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(HouseRobber.solve([2, 7, 9, 3, 1]), 12)
    }

    func testHandlesSingleHouse()
    {
        XCTAssertEqual(HouseRobber.solve([5]), 5)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(HouseRobber.solve([2, 1, 1, 2, 8, 3, 4, 9, 2, 7, 1, 6]), 33)
    }
}
