import XCTest
@testable import AlgorithmHash

final class DesignUndergroundSystemTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let system = UndergroundSystem()

        system.checkIn(45, "Leyton", 3)
        system.checkIn(32, "Paradise", 8)
        system.checkIn(27, "Leyton", 10)
        system.checkOut(45, "Waterloo", 15)
        system.checkOut(27, "Waterloo", 20)
        system.checkOut(32, "Cambridge", 22)

        XCTAssertEqual(system.getAverageTime("Paradise", "Cambridge"), 14, accuracy: 0.0001)
        XCTAssertEqual(system.getAverageTime("Leyton", "Waterloo"), 11, accuracy: 0.0001)
    }

    func testAveragesMultipleTripsOnTheSameRoute()
    {
        let system = UndergroundSystem()

        system.checkIn(1, "A", 3)
        system.checkOut(1, "B", 8)
        system.checkIn(2, "A", 10)
        system.checkOut(2, "B", 20)

        XCTAssertEqual(system.getAverageTime("A", "B"), 7.5, accuracy: 0.0001)
    }

    func testKeepsDifferentRoutesSeparate()
    {
        let system = UndergroundSystem()

        system.checkIn(1, "A", 0)
        system.checkOut(1, "B", 10)
        system.checkIn(2, "A", 5)
        system.checkOut(2, "C", 20)

        XCTAssertEqual(system.getAverageTime("A", "B"), 10, accuracy: 0.0001)
        XCTAssertEqual(system.getAverageTime("A", "C"), 15, accuracy: 0.0001)
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let system = UndergroundSystem()

        system.checkIn(11, "North", 1)
        system.checkIn(22, "North", 2)
        system.checkIn(33, "East", 3)
        system.checkOut(11, "South", 11)
        system.checkOut(22, "South", 14)
        system.checkOut(33, "West", 15)
        system.checkIn(44, "North", 20)
        system.checkOut(44, "South", 32)

        XCTAssertEqual(system.getAverageTime("North", "South"), 11.3333333333, accuracy: 0.0001)
        XCTAssertEqual(system.getAverageTime("East", "West"), 12, accuracy: 0.0001)
    }
}
