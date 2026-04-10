public enum KokoEatingBananas
{
    public static func solve(_ piles: [Int], _ hours: Int) -> Int
    {
        var left = 1
        var right = piles.max() ?? 1
        var answer = right

        while left <= right
        {
            let middle = left + ((right - left) / 2)

            if canFinish(piles, within: hours, speed: middle)
            {
                answer = middle
                right = middle - 1
            }
            else
            {
                left = middle + 1
            }
        }

        return answer
    }

    private static func canFinish(_ piles: [Int], within hours: Int, speed: Int) -> Bool
    {
        var spentHours = 0

        for pile in piles
        {
            spentHours += (pile + speed - 1) / speed

            if spentHours > hours
            {
                return false
            }
        }

        return true
    }
}
