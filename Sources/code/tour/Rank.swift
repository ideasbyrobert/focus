public enum Rank: Int, CaseIterable
{
    case ace = 1
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case jack
    case queen
    case king

    public func simpleDescription() -> String
    {
        switch self
        {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(rawValue)
        }
    }

    public func isHigher(than other: Rank) -> Bool
    {
        rawValue > other.rawValue
    }
}
