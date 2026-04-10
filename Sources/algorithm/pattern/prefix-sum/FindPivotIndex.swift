public enum FindPivotIndex
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        let totalSum = numbers.reduce(0, +)
        var leftSum = 0

        for index in numbers.indices
        {
            if leftSum == totalSum - leftSum - numbers[index]
            {
                return index
            }

            leftSum += numbers[index]
        }

        return -1
    }
}
