public enum LongestIncreasingSubsequence
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        guard !numbers.isEmpty else
        {
            return 0
        }

        var tails: [Int] = []

        for number in numbers
        {
            let index = firstGreaterThanOrEqual(to: number, in: tails)

            if index == tails.count
            {
                tails.append(number)
            }
            else
            {
                tails[index] = number
            }
        }

        return tails.count
    }

    private static func firstGreaterThanOrEqual(to target: Int, in numbers: [Int]) -> Int
    {
        var left = 0
        var right = numbers.count

        while left < right
        {
            let middle = left + ((right - left) / 2)

            if numbers[middle] < target
            {
                left = middle + 1
            }
            else
            {
                right = middle
            }
        }

        return left
    }
}
