public enum UniquePaths
{
    public static func solve(_ rowCount: Int, _ columnCount: Int) -> Int
    {
        guard rowCount > 0, columnCount > 0 else
        {
            return 0
        }

        var pathCounts = Array(repeating: 1, count: columnCount)

        for _ in 1..<rowCount
        {
            for columnIndex in 1..<columnCount
            {
                pathCounts[columnIndex] += pathCounts[columnIndex - 1]
            }
        }

        return pathCounts[columnCount - 1]
    }
}
