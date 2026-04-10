public enum LongestSubarrayOf1sAfterDeletingOne
{
    public static func solve(_ numbers: [Int]) -> Int
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

            while zeroCount > 1
            {
                if numbers[left] == 0
                {
                    zeroCount -= 1
                }

                left += 1
            }

            maximumWindowLength = max(maximumWindowLength, right - left + 1)
        }

        guard maximumWindowLength > 0 else
        {
            return 0
        }

        return maximumWindowLength - 1
    }
}
