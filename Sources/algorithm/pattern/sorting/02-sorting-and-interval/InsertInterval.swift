public enum InsertInterval
{
    public static func solve(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]]
    {
        var result: [[Int]] = []
        var currentInterval = newInterval
        var index = 0

        while index < intervals.count && intervals[index][1] < currentInterval[0]
        {
            result.append(intervals[index])
            index += 1
        }

        while index < intervals.count && intervals[index][0] <= currentInterval[1]
        {
            currentInterval[0] = min(currentInterval[0], intervals[index][0])
            currentInterval[1] = max(currentInterval[1], intervals[index][1])
            index += 1
        }

        result.append(currentInterval)

        while index < intervals.count
        {
            result.append(intervals[index])
            index += 1
        }

        return result
    }
}
