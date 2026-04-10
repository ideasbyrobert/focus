import XCTest
@testable import AlgorithmStackAndQueue

final class TrappingRainWaterTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(TrappingRainWater.solve([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(TrappingRainWater.solve([4, 2, 0, 3, 2, 5]), 9)
    }

    func testHandlesFlatOrEmptyInput()
    {
        XCTAssertEqual(TrappingRainWater.solve([]), 0)
        XCTAssertEqual(TrappingRainWater.solve([3, 3, 3]), 0)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(TrappingRainWater.solve([5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5]), 25)
    }
}
