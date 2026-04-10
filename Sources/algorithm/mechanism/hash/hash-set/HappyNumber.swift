public enum HappyNumber
{
    public static func solve(_ number: Int) -> Bool
    {
        var seen: Set<Int> = []
        var current = number

        while current != 1 && !seen.contains(current)
        {
            seen.insert(current)
            current = nextNumber(after: current)
        }

        return current == 1
    }

    private static func nextNumber(after number: Int) -> Int
    {
        var remaining = number
        var total = 0

        while remaining > 0
        {
            let digit = remaining % 10
            total += digit * digit
            remaining /= 10
        }

        return total
    }
}
