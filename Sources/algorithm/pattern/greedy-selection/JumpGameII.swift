public enum JumpGameII
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        guard numbers.count > 1 else
        {
            return 0
        }

        var jumps = 0
        var currentJumpEnd = 0
        var farthestReachableIndex = 0

        for index in 0..<(numbers.count - 1)
        {
            farthestReachableIndex = max(farthestReachableIndex, index + numbers[index])

            if index == currentJumpEnd
            {
                jumps += 1
                currentJumpEnd = farthestReachableIndex
            }
        }

        return jumps
    }
}
