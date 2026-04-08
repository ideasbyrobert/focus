public enum RomanToInteger
{
    public static func solve(_ numeral: String) -> Int
    {
        let characters = Array(numeral)
        var total = 0

        for index in characters.indices
        {
            let currentValue = value(of: characters[index])
            let nextValue = index + 1 < characters.count ? value(of: characters[index + 1]) : 0

            if currentValue < nextValue
            {
                total -= currentValue
            }
            else
            {
                total += currentValue
            }
        }

        return total
    }

    private static func value(of symbol: Character) -> Int
    {
        switch symbol
        {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1_000
        default:
            return 0
        }
    }
}
