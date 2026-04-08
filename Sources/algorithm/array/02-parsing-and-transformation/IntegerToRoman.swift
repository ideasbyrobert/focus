public enum IntegerToRoman
{
    public static func solve(_ number: Int) -> String
    {
        var remaining = number
        var result = ""

        for (value, symbol) in symbols
        {
            while remaining >= value
            {
                result += symbol
                remaining -= value
            }
        }

        return result
    }

    private static let symbols: [(Int, String)] = [
        (1_000, "M"),
        (900, "CM"),
        (500, "D"),
        (400, "CD"),
        (100, "C"),
        (90, "XC"),
        (50, "L"),
        (40, "XL"),
        (10, "X"),
        (9, "IX"),
        (5, "V"),
        (4, "IV"),
        (1, "I"),
    ]
}
