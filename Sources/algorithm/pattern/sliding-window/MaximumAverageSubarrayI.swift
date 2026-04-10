public enum MaximumAverageSubarrayI
{
    public static func solve(_ numbers: [Int], _ windowSize: Int) -> Double
    {
        guard !numbers.isEmpty, windowSize > 0, windowSize <= numbers.count else
        {
            return 0
        }

        var currentWindowSum = numbers[0..<windowSize].reduce(0, +)
        var maximumWindowSum = currentWindowSum

        for index in windowSize..<numbers.count
        {
            currentWindowSum += numbers[index]
            currentWindowSum -= numbers[index - windowSize]
            maximumWindowSum = max(maximumWindowSum, currentWindowSum)
        }

        return Double(maximumWindowSum) / Double(windowSize)
    }
}
