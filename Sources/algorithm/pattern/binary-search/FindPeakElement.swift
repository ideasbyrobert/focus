public enum FindPeakElement
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        var left = 0
        var right = numbers.count - 1

        while left < right
        {
            let middle = left + ((right - left) / 2)

            if numbers[middle] < numbers[middle + 1]
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
