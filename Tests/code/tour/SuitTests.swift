import XCTest
@testable import CodeTour

final class SuitTests: XCTestCase
{
    func testSuitDescriptionsMatchTheirCaseNames()
    {
        XCTAssertEqual(Suit.hearts.simpleDescription(), "hearts")
        XCTAssertEqual(Suit.spades.simpleDescription(), "spades")
    }

    func testSuitColorMatchesTheExperiment()
    {
        XCTAssertEqual(Suit.spades.color(), "black")
        XCTAssertEqual(Suit.clubs.color(), "black")
        XCTAssertEqual(Suit.hearts.color(), "red")
        XCTAssertEqual(Suit.diamonds.color(), "red")
    }
}
