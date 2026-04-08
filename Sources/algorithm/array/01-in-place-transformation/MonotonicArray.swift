public enum MonotonicArray
{
    public static func solve(_ numbers: [Int]) -> Bool
    {
        if numbers.count < 3
        {
            return true
        }

        var sawIncrease = false
        var sawDecrease = false

        for index in 1..<numbers.count
        {
            if numbers[index] > numbers[index - 1]
            {
                sawIncrease = true
            }
            else if numbers[index] < numbers[index - 1]
            {
                sawDecrease = true
            }

            if sawIncrease && sawDecrease
            {
                return false
            }
        }

        return true
    }
}
