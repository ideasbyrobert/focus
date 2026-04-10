public enum MaxConsecutiveOnesIII
{
    public static func solve(_ numbers: [Int], _ allowedZeroFlips: Int) -> Int
    {
        var left = 0
        var zeroCount = 0
        var maximumWindowLength = 0

        for right in 0..<numbers.count
        {
            if numbers[right] == 0
            {
                zeroCount += 1
            }

            while zeroCount > allowedZeroFlips
            {
                if numbers[left] == 0
                {
                    zeroCount -= 1
                }

                left += 1
            }

            maximumWindowLength = max(maximumWindowLength, right - left + 1)
        }

        return maximumWindowLength
    }
}
