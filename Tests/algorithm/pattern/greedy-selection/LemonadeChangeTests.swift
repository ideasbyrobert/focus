import XCTest
@testable import AlgorithmGreedySelection

final class LemonadeChangeTests: XCTestCase
{
    func testHandlesCanonicalSuccessfulInput()
    {
        XCTAssertTrue(LemonadeChange.solve([5, 5, 5, 10, 20]))
    }

    func testHandlesCanonicalFailureInput()
    {
        XCTAssertFalse(LemonadeChange.solve([5, 5, 10, 10, 20]))
    }

    func testHandlesCustomerWhoPaysWithTenFirst()
    {
        XCTAssertFalse(LemonadeChange.solve([10]))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(LemonadeChange.solve([5, 5, 5, 10, 5, 5, 10, 20, 5, 10, 20, 20]))
    }
}
