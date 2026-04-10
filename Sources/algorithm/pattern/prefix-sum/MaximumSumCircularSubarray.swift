public enum MaximumSumCircularSubarray
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        guard let firstNumber = numbers.first else
        {
            return 0
        }

        var totalSum = 0
        var currentMaximum = 0
        var currentMinimum = 0
        var bestMaximum = firstNumber
        var bestMinimum = firstNumber

        for number in numbers
        {
            currentMaximum = max(number, currentMaximum + number)
            bestMaximum = max(bestMaximum, currentMaximum)

            currentMinimum = min(number, currentMinimum + number)
            bestMinimum = min(bestMinimum, currentMinimum)

            totalSum += number
        }

        if bestMaximum < 0
        {
            return bestMaximum
        }

        return max(bestMaximum, totalSum - bestMinimum)
    }
}
