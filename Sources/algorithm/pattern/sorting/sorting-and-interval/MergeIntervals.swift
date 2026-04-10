public enum MergeIntervals
{
    public static func solve(_ intervals: [[Int]]) -> [[Int]]
    {
        guard !intervals.isEmpty else
        {
            return []
        }

        let sortedIntervals = intervals.sorted
        {
            if $0[0] != $1[0]
            {
                return $0[0] < $1[0]
            }

            return $0[1] < $1[1]
        }

        var mergedIntervals: [[Int]] = [sortedIntervals[0]]

        for interval in sortedIntervals.dropFirst()
        {
            if interval[0] <= mergedIntervals[mergedIntervals.count - 1][1]
            {
                mergedIntervals[mergedIntervals.count - 1][1] = max(mergedIntervals[mergedIntervals.count - 1][1], interval[1])
            }
            else
            {
                mergedIntervals.append(interval)
            }
        }

        return mergedIntervals
    }
}
