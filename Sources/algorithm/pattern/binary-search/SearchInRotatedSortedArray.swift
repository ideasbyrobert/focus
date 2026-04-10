public enum SearchInRotatedSortedArray
{
    public static func solve(_ numbers: [Int], target: Int) -> Int
    {
        var left = 0
        var right = numbers.count - 1

        while left <= right
        {
            let middle = left + ((right - left) / 2)

            if numbers[middle] == target
            {
                return middle
            }

            if numbers[left] <= numbers[middle]
            {
                if numbers[left] <= target && target < numbers[middle]
                {
                    right = middle - 1
                }
                else
                {
                    left = middle + 1
                }
            }
            else
            {
                if numbers[middle] < target && target <= numbers[right]
                {
                    left = middle + 1
                }
                else
                {
                    right = middle - 1
                }
            }
        }

        return -1
    }
}
