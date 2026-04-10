import XCTest
@testable import AlgorithmPrefixSum

final class TrappingRainWaterPrefixSumTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(TrappingRainWater.solve([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(TrappingRainWater.solve([4, 2, 0, 3, 2, 5]), 9)
    }

    func testHandlesFlatOrShortInput()
    {
        XCTAssertEqual(TrappingRainWater.solve([]), 0)
        XCTAssertEqual(TrappingRainWater.solve([3, 3, 3]), 0)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(TrappingRainWater.solve([5, 0, 2, 1, 4, 0, 1, 3, 0, 2, 4, 1, 2]), 24)
    }
}
