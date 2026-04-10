import XCTest
@testable import AlgorithmHash

final class ContainsDuplicateIITests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(ContainsDuplicateII.solve([1, 2, 3, 1], within: 3))
    }

    func testRejectsWhenDuplicateIsTooFarAway()
    {
        XCTAssertFalse(ContainsDuplicateII.solve([1, 2, 3, 1, 2, 3], within: 2))
    }

    func testRejectsWhenDistanceIsZero()
    {
        XCTAssertFalse(ContainsDuplicateII.solve([1, 1], within: 0))
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertTrue(ContainsDuplicateII.solve([5, 1, 9, 3, 7, 4, 2, 8, 6, 1, 10, 11], within: 9))
        XCTAssertFalse(ContainsDuplicateII.solve([5, 1, 9, 3, 7, 4, 2, 8, 6, 1, 10, 11], within: 7))
    }
}
