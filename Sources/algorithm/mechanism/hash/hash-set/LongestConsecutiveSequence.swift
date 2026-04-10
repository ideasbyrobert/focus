public enum LongestConsecutiveSequence
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        let values = Set(numbers)
        var longestSequence = 0

        for number in values
        {
            guard !values.contains(number - 1) else
            {
                continue
            }

            var current = number
            var length = 1

            while values.contains(current + 1)
            {
                current += 1
                length += 1
            }

            longestSequence = max(longestSequence, length)
        }

        return longestSequence
    }
}
