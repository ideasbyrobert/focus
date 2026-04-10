public enum MinimumPathSum
{
    public static func solve(_ grid: [[Int]]) -> Int
    {
        guard let columnCount = grid.first?.count, columnCount > 0 else
        {
            return 0
        }

        var minimumSums = Array(repeating: 0, count: columnCount)

        for rowIndex in grid.indices
        {
            for columnIndex in 0..<columnCount
            {
                if rowIndex == 0 && columnIndex == 0
                {
                    minimumSums[columnIndex] = grid[rowIndex][columnIndex]
                }
                else if rowIndex == 0
                {
                    minimumSums[columnIndex] = minimumSums[columnIndex - 1] + grid[rowIndex][columnIndex]
                }
                else if columnIndex == 0
                {
                    minimumSums[columnIndex] += grid[rowIndex][columnIndex]
                }
                else
                {
                    minimumSums[columnIndex] = grid[rowIndex][columnIndex] + min(
                        minimumSums[columnIndex],
                        minimumSums[columnIndex - 1]
                    )
                }
            }
        }

        return minimumSums[columnCount - 1]
    }
}
