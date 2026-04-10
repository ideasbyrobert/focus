public enum NonOverlappingIntervals
{
    public static func solve(_ intervals: [[Int]]) -> Int
    {
        guard !intervals.isEmpty else
        {
            return 0
        }

        let sortedIntervals = intervals.sorted
        {
            if $0[1] != $1[1]
            {
                return $0[1] < $1[1]
            }

            return $0[0] < $1[0]
        }

        var removalCount = 0
        var previousEnd = sortedIntervals[0][1]

        for interval in sortedIntervals.dropFirst()
        {
            if interval[0] < previousEnd
            {
                removalCount += 1
            }
            else
            {
                previousEnd = interval[1]
            }
        }

        return removalCount
    }
}
