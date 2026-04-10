import XCTest
@testable import AlgorithmHash

final class UniqueNumberOfOccurrencesTests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(UniqueNumberOfOccurrences.solve([1, 2, 2, 1, 1, 3]))
    }

    func testRejectsRepeatedOccurrenceCounts()
    {
        XCTAssertFalse(UniqueNumberOfOccurrences.solve([1, 2]))
    }

    func testHandlesNegativeValues()
    {
        XCTAssertTrue(UniqueNumberOfOccurrences.solve([-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(UniqueNumberOfOccurrences.solve([4, 4, 4, 4, 7, 7, 7, 9, 9, 11, 12, 12, 12, 12, 12]))
        XCTAssertFalse(UniqueNumberOfOccurrences.solve([4, 4, 4, 7, 7, 7, 9, 9, 11, 11]))
    }
}
