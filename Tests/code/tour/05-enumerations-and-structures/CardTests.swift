import XCTest
@testable import CodeTour

final class CardTests: XCTestCase
{
    func testCardDescriptionIncludesTheRankAndSuit()
    {
        let card = Card(rank: .three, suit: .spades)

        XCTAssertEqual(card.simpleDescription(), "The 3 of spades")
    }

    func testFullDeckContainsEachCombinationOfRankAndSuit()
    {
        let deck = Card.fullDeck()

        XCTAssertEqual(deck.count, 52)
        XCTAssertTrue(deck.contains(Card(rank: .ace, suit: .spades)))
        XCTAssertTrue(deck.contains(Card(rank: .king, suit: .clubs)))
    }
}
