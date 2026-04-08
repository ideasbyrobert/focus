import XCTest
@testable import AlgorithmArray

final class HIndexTests: XCTestCase
{
    func testCalculatesCanonicalHIndex()
    {
        XCTAssertEqual(HIndex.solve([3, 0, 6, 1, 5]), 3)
    }

    func testHandlesShortInput()
    {
        XCTAssertEqual(HIndex.solve([1, 3, 1]), 1)
    }

    func testReturnsZeroWhenNoPaperQualifies()
    {
        XCTAssertEqual(HIndex.solve([0, 0, 0]), 0)
    }

    func testHandlesHighCitationCounts()
    {
        XCTAssertEqual(HIndex.solve([10, 8, 5, 4, 3]), 4)
    }

    func testHandlesDebugFriendlyLongInput()
    {
        let citations = [25, 8, 5, 3, 3, 10, 1, 0, 12, 7, 6, 4]

        XCTAssertEqual(HIndex.solve(citations), 6)
    }
}
