public enum JumpGame
{
    public static func solve(_ numbers: [Int]) -> Bool
    {
        var farthestReachableIndex = 0

        for index in numbers.indices
        {
            guard index <= farthestReachableIndex else
            {
                return false
            }

            farthestReachableIndex = max(farthestReachableIndex, index + numbers[index])

            if farthestReachableIndex >= numbers.count - 1
            {
                return true
            }
        }

        return true
    }
}
