import XCTest
@testable import AlgorithmQueue

final class Dota2SenateTests: XCTestCase
{
    func testHandlesCanonicalRadiantVictory()
    {
        XCTAssertEqual(Dota2Senate.solve("RD"), "Radiant")
    }

    func testHandlesCanonicalDireVictory()
    {
        XCTAssertEqual(Dota2Senate.solve("RDD"), "Dire")
    }

    func testHandlesSingleFactionInput()
    {
        XCTAssertEqual(Dota2Senate.solve("RRR"), "Radiant")
        XCTAssertEqual(Dota2Senate.solve("DDD"), "Dire")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(Dota2Senate.solve("RDDRRDRDRD"), "Radiant")
    }
}
