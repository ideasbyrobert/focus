public struct Card: Equatable
{
    public let rank: Rank
    public let suit: Suit

    public init(rank: Rank, suit: Suit)
    {
        self.rank = rank
        self.suit = suit
    }

    public func simpleDescription() -> String
    {
        "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }

    public static func fullDeck() -> [Card]
    {
        var deck: [Card] = []

        for suit in Suit.allCases
        {
            for rank in Rank.allCases
            {
                deck.append(Card(rank: rank, suit: suit))
            }
        }

        return deck
    }
}
