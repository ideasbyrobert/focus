public enum ClimbingStairs
{
    public static func solve(_ stepCount: Int) -> Int
    {
        guard stepCount > 2 else
        {
            return stepCount
        }

        var previous = 1
        var current = 2

        for _ in 3...stepCount
        {
            let next = previous + current
            previous = current
            current = next
        }

        return current
    }
}
