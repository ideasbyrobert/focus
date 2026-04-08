public enum GreatestCommonDivisorOfStrings
{
    public static func solve(_ first: String, _ second: String) -> String
    {
        if first + second != second + first
        {
            return ""
        }

        let divisorLength = greatestCommonDivisor(first.count, second.count)

        return String(first.prefix(divisorLength))
    }

    private static func greatestCommonDivisor(_ left: Int, _ right: Int) -> Int
    {
        var leftValue = left
        var rightValue = right

        while rightValue != 0
        {
            let remainder = leftValue % rightValue
            leftValue = rightValue
            rightValue = remainder
        }

        return leftValue
    }
}
