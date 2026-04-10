public enum SingleNumber
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        var uniqueNumber = 0

        for number in numbers
        {
            uniqueNumber ^= number
        }

        return uniqueNumber
    }
}
