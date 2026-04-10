public enum MaximumSubarray
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        guard var currentBest = numbers.first else
        {
            return 0
        }

        var overallBest = currentBest

        for number in numbers.dropFirst()
        {
            currentBest = max(number, currentBest + number)
            overallBest = max(overallBest, currentBest)
        }

        return overallBest
    }
}
