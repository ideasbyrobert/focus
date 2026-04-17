public enum MinimumNumberOfArrowsToBurstBalloons
{
    public static func solve(_ unsortedBalloons: [[Int]]) -> Int
    {
        guard !unsortedBalloons.isEmpty else
        {
            return 0
        }

        let balloonsSortedByEnd = unsortedBalloons.sorted
        {
            if $0[1] != $1[1]
            {
                return $0[1] < $1[1]
            }

            return $0[0] < $1[0]
        }

        var arrowCount = 1
        var currentArrowPosition = balloonsSortedByEnd[0][1]

        for nextBalloon in balloonsSortedByEnd.dropFirst()
        {
            if nextBalloon[0] > currentArrowPosition
            {
                arrowCount += 1
                currentArrowPosition = nextBalloon[1]
            }
        }

        return arrowCount
    }
}
