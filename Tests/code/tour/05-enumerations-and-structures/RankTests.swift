import XCTest
@testable import CodeTour

final class RankTests: XCTestCase
{
    func testRankDescriptionsMatchTheGuidedTourExamples()
    {
        XCTAssertEqual(Rank.ace.simpleDescription(), "ace")
        XCTAssertEqual(Rank.jack.simpleDescription(), "jack")
        XCTAssertEqual(Rank.three.simpleDescription(), "3")
        XCTAssertEqual(Rank.ace.rawValue, 1)
    }

    func testRankComparisonUsesRawValues()
    {
        XCTAssertTrue(Rank.king.isHigher(than: .queen))
        XCTAssertFalse(Rank.ace.isHigher(than: .two))
    }

    func testRankCanBeCreatedFromARawValue()
    {
        XCTAssertEqual(Rank(rawValue: 3), .three)
        XCTAssertNil(Rank(rawValue: 30))
    }
}
