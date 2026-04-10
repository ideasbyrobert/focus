public enum NearestExitFromEntranceInMaze
{
    public static func solve(_ maze: [[Character]], _ entrance: [Int]) -> Int
    {
        guard !maze.isEmpty, !maze[0].isEmpty else
        {
            return -1
        }

        var visited = Array(
            repeating: Array(repeating: false, count: maze[0].count),
            count: maze.count
        )
        var queue = [(row: entrance[0], column: entrance[1], steps: 0)]
        var index = 0
        visited[entrance[0]][entrance[1]] = true

        while index < queue.count
        {
            let current = queue[index]
            index += 1

            for direction in directions
            {
                let nextRow = current.row + direction.row
                let nextColumn = current.column + direction.column

                guard nextRow >= 0, nextRow < maze.count else
                {
                    continue
                }

                guard nextColumn >= 0, nextColumn < maze[nextRow].count else
                {
                    continue
                }

                if maze[nextRow][nextColumn] == "+" || visited[nextRow][nextColumn]
                {
                    continue
                }

                if isBorderCell(row: nextRow, column: nextColumn, rowCount: maze.count, columnCount: maze[nextRow].count)
                {
                    return current.steps + 1
                }

                visited[nextRow][nextColumn] = true
                queue.append((nextRow, nextColumn, current.steps + 1))
            }
        }

        return -1
    }

    private static func isBorderCell(row: Int, column: Int, rowCount: Int, columnCount: Int) -> Bool
    {
        row == 0 || column == 0 || row == rowCount - 1 || column == columnCount - 1
    }

    private static let directions: [(row: Int, column: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]
}
