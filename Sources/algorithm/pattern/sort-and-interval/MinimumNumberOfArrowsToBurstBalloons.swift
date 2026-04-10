public enum MinimumNumberOfArrowsToBurstBalloons
{
    public static func solve(_ balloons: [[Int]]) -> Int
    {
        guard !balloons.isEmpty else
        {
            return 0
        }

        let sortedBalloons = balloons.sorted
        {
            if $0[1] != $1[1]
            {
                return $0[1] < $1[1]
            }

            return $0[0] < $1[0]
        }

        var arrowCount = 1
        var arrowPosition = sortedBalloons[0][1]

        for balloon in sortedBalloons.dropFirst()
        {
            if balloon[0] > arrowPosition
            {
                arrowCount += 1
                arrowPosition = balloon[1]
            }
        }

        return arrowCount
    }
}
