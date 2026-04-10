public enum UniquePathsII
{
    public static func solve(_ obstacleGrid: [[Int]]) -> Int
    {
        guard let columnCount = obstacleGrid.first?.count, columnCount > 0 else
        {
            return 0
        }

        var pathCounts = Array(repeating: 0, count: columnCount)
        pathCounts[0] = obstacleGrid[0][0] == 0 ? 1 : 0

        for row in obstacleGrid
        {
            for columnIndex in 0..<columnCount
            {
                if row[columnIndex] == 1
                {
                    pathCounts[columnIndex] = 0
                }
                else if columnIndex > 0
                {
                    pathCounts[columnIndex] += pathCounts[columnIndex - 1]
                }
            }
        }

        return pathCounts[columnCount - 1]
    }
}
