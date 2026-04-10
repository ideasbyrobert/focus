public enum FindFirstAndLastPosition
{
    public static func solve(_ numbers: [Int], target: Int) -> [Int]
    {
        let first = boundaryIndex(of: target, in: numbers, moveRightOnEqual: false)

        if first == numbers.count || numbers[first] != target
        {
            return [-1, -1]
        }

        let last = boundaryIndex(of: target, in: numbers, moveRightOnEqual: true) - 1

        return [first, last]
    }

    private static func boundaryIndex(of target: Int, in numbers: [Int], moveRightOnEqual: Bool) -> Int
    {
        var left = 0
        var right = numbers.count

        while left < right
        {
            let middle = left + ((right - left) / 2)

            if numbers[middle] < target || (moveRightOnEqual && numbers[middle] == target)
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
