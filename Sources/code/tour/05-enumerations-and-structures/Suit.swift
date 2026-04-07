public enum Suit: CaseIterable
{
    case spades
    case hearts
    case diamonds
    case clubs

    public func simpleDescription() -> String
    {
        switch self
        {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }

    public func color() -> String
    {
        switch self
        {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }
}
