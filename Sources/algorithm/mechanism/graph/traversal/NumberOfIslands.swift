public enum NumberOfIslands
{
    public static func solve(_ grid: [[Character]]) -> Int
    {
        guard !grid.isEmpty, !grid[0].isEmpty else
        {
            return 0
        }

        var grid = grid
        var islandCount = 0

        for row in grid.indices
        {
            for column in grid[row].indices
            {
                if grid[row][column] != "1"
                {
                    continue
                }

                islandCount += 1
                sinkIsland(in: &grid, startingAtRow: row, column: column)
            }
        }

        return islandCount
    }

    private static func sinkIsland(in grid: inout [[Character]], startingAtRow row: Int, column: Int)
    {
        var queue = [(row: row, column: column)]
        var index = 0
        grid[row][column] = "0"

        while index < queue.count
        {
            let current = queue[index]
            index += 1

            for direction in directions
            {
                let nextRow = current.row + direction.row
                let nextColumn = current.column + direction.column

                if !isLand(in: grid, row: nextRow, column: nextColumn)
                {
                    continue
                }

                grid[nextRow][nextColumn] = "0"
                queue.append((nextRow, nextColumn))
            }
        }
    }

    private static func isLand(in grid: [[Character]], row: Int, column: Int) -> Bool
    {
        guard row >= 0, row < grid.count else
        {
            return false
        }

        guard column >= 0, column < grid[row].count else
        {
            return false
        }

        return grid[row][column] == "1"
    }

    private static let directions: [(row: Int, column: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]
}
