import XCTest
@testable import AlgorithmArray

final class CanPlaceFlowersTests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(CanPlaceFlowers.solve([1, 0, 0, 0, 1], newFlowers: 1))
    }

    func testRejectsWhenTooManyFlowersAreRequested()
    {
        XCTAssertFalse(CanPlaceFlowers.solve([1, 0, 0, 0, 1], newFlowers: 2))
    }

    func testHandlesSinglePlotInputs()
    {
        XCTAssertTrue(CanPlaceFlowers.solve([0], newFlowers: 1))
        XCTAssertFalse(CanPlaceFlowers.solve([0], newFlowers: 2))
        XCTAssertFalse(CanPlaceFlowers.solve([1], newFlowers: 1))
    }

    func testAcceptsWhenNoNewFlowersAreRequired()
    {
        XCTAssertTrue(CanPlaceFlowers.solve([1, 0, 0, 0, 1], newFlowers: 0))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(CanPlaceFlowers.solve([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], newFlowers: 5))
        XCTAssertFalse(CanPlaceFlowers.solve([0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0], newFlowers: 5))
    }
}
