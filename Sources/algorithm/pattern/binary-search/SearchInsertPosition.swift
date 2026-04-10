public enum SearchInsertPosition
{
    public static func solve(_ numbers: [Int], target: Int) -> Int
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
