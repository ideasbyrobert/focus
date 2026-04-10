import XCTest
@testable import AlgorithmHashMap

final class HappyNumberTests: XCTestCase
{
    func testAcceptsCanonicalHappyNumber()
    {
        XCTAssertTrue(HappyNumber.solve(19))
    }

    func testRejectsCanonicalUnhappyNumber()
    {
        XCTAssertFalse(HappyNumber.solve(2))
    }

    func testHandlesOne()
    {
        XCTAssertTrue(HappyNumber.solve(1))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(HappyNumber.solve(100000))
        XCTAssertFalse(HappyNumber.solve(116))
    }
}
