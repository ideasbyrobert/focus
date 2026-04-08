import XCTest
@testable import AlgorithmArray

final class DesignParkingSystemTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let parkingSystem = ParkingSystem(big: 1, medium: 1, small: 0)

        XCTAssertTrue(parkingSystem.addCar(1))
        XCTAssertTrue(parkingSystem.addCar(2))
        XCTAssertFalse(parkingSystem.addCar(3))
        XCTAssertFalse(parkingSystem.addCar(1))
    }

    func testDepletesEachCarTypeIndependently()
    {
        let parkingSystem = ParkingSystem(big: 2, medium: 1, small: 1)

        XCTAssertTrue(parkingSystem.addCar(1))
        XCTAssertTrue(parkingSystem.addCar(1))
        XCTAssertFalse(parkingSystem.addCar(1))
        XCTAssertTrue(parkingSystem.addCar(2))
        XCTAssertFalse(parkingSystem.addCar(2))
        XCTAssertTrue(parkingSystem.addCar(3))
        XCTAssertFalse(parkingSystem.addCar(3))
    }

    func testRejectsInvalidCarTypes()
    {
        let parkingSystem = ParkingSystem(big: 1, medium: 1, small: 1)

        XCTAssertFalse(parkingSystem.addCar(0))
        XCTAssertFalse(parkingSystem.addCar(4))
    }

    func testHandlesZeroCapacityInitialization()
    {
        let parkingSystem = ParkingSystem(big: 0, medium: 0, small: 0)

        XCTAssertFalse(parkingSystem.addCar(1))
        XCTAssertFalse(parkingSystem.addCar(2))
        XCTAssertFalse(parkingSystem.addCar(3))
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let parkingSystem = ParkingSystem(big: 3, medium: 2, small: 2)
        let operations = [1, 2, 1, 3, 2, 1, 3, 1, 2, 3]
        let expected = [true, true, true, true, true, true, true, false, false, false]
        var results: [Bool] = []

        for operation in operations
        {
            results.append(parkingSystem.addCar(operation))
        }

        XCTAssertEqual(results, expected)
    }
}
