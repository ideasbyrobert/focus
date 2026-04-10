public enum FindMinimumInRotatedSortedArray
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        var left = 0
        var right = numbers.count - 1

        while left < right
        {
            let middle = left + ((right - left) / 2)

            if numbers[middle] > numbers[right]
            {
                left = middle + 1
            }
            else
            {
                right = middle
            }
        }

        return numbers[left]
    }
}
