public enum MinimumSizeSubarraySum
{
    public static func solve(_ target: Int, _ numbers: [Int]) -> Int
    {
        var left = 0
        var currentWindowSum = 0
        var minimumWindowLength = Int.max

        for right in 0..<numbers.count
        {
            currentWindowSum += numbers[right]

            while currentWindowSum >= target
            {
                minimumWindowLength = min(minimumWindowLength, right - left + 1)
                currentWindowSum -= numbers[left]
                left += 1
            }
        }

        return minimumWindowLength == Int.max ? 0 : minimumWindowLength
    }
}
