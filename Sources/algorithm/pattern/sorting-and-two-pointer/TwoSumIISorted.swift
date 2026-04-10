public enum TwoSumIISorted
{
    public static func solve(_ numbers: [Int], target: Int) -> [Int]
    {
        var left = 0
        var right = numbers.count - 1

        while left < right
        {
            let sum = numbers[left] + numbers[right]

            if sum == target
            {
                return [left + 1, right + 1]
            }

            if sum < target
            {
                left += 1
            }
            else
            {
                right -= 1
            }
        }

        return []
    }
}
