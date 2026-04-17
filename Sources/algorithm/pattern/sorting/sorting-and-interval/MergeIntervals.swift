public enum MergeIntervals
{
    public static func solve(_ unsortedIntervals: [[Int]]) -> [[Int]]
    {
        guard !unsortedIntervals.isEmpty else
        {
            return []
        }

        let intervalsSortedByStart = unsortedIntervals.sorted
        {
            if $0[0] != $1[0]
            {
                return $0[0] < $1[0]
            }

            return $0[1] < $1[1]
        }

        var mergedIntervals: [[Int]] = [intervalsSortedByStart[0]]

        for nextInterval in intervalsSortedByStart.dropFirst()
        {
            let lastMergedIndex = mergedIntervals.count - 1
            let currentMergedEnd = mergedIntervals[lastMergedIndex][1]

            if nextInterval[0] <= currentMergedEnd
            {
                mergedIntervals[lastMergedIndex][1] = max(currentMergedEnd, nextInterval[1])
            }
            else
            {
                mergedIntervals.append(nextInterval)
            }
        }

        return mergedIntervals
    }
}
