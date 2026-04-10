public enum RottingOranges
{
    public static func solve(_ grid: [[Int]]) -> Int
    {
        guard !grid.isEmpty, !grid[0].isEmpty else
        {
            return 0
        }

        var grid = grid
        var queue: [(row: Int, column: Int, minute: Int)] = []
        var index = 0
        var freshOrangeCount = 0

        for row in grid.indices
        {
            for column in grid[row].indices
            {
                if grid[row][column] == 2
                {
                    queue.append((row, column, 0))
                }
                else if grid[row][column] == 1
                {
                    freshOrangeCount += 1
                }
            }
        }

        var elapsedMinutes = 0

        while index < queue.count
        {
            let current = queue[index]
            index += 1
            elapsedMinutes = current.minute

            for direction in directions
            {
                let nextRow = current.row + direction.row
                let nextColumn = current.column + direction.column

                guard nextRow >= 0, nextRow < grid.count else
                {
                    continue
                }

                guard nextColumn >= 0, nextColumn < grid[nextRow].count else
                {
                    continue
                }

                if grid[nextRow][nextColumn] != 1
                {
                    continue
                }

                grid[nextRow][nextColumn] = 2
                freshOrangeCount -= 1
                queue.append((nextRow, nextColumn, current.minute + 1))
            }
        }

        return freshOrangeCount == 0 ? elapsedMinutes : -1
    }

    private static let directions: [(row: Int, column: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]
}
