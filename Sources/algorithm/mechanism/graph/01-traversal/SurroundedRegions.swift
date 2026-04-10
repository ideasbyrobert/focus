public enum SurroundedRegions
{
    public static func solve(_ board: inout [[Character]])
    {
        guard !board.isEmpty, !board[0].isEmpty else
        {
            return
        }

        for row in board.indices
        {
            markBorderConnectedRegions(in: &board, row: row, column: 0)
            markBorderConnectedRegions(in: &board, row: row, column: board[row].count - 1)
        }

        for column in board[0].indices
        {
            markBorderConnectedRegions(in: &board, row: 0, column: column)
            markBorderConnectedRegions(in: &board, row: board.count - 1, column: column)
        }

        for row in board.indices
        {
            for column in board[row].indices
            {
                if board[row][column] == "O"
                {
                    board[row][column] = "X"
                }
                else if board[row][column] == "S"
                {
                    board[row][column] = "O"
                }
            }
        }
    }

    private static func markBorderConnectedRegions(in board: inout [[Character]], row: Int, column: Int)
    {
        guard row >= 0, row < board.count else
        {
            return
        }

        guard column >= 0, column < board[row].count else
        {
            return
        }

        guard board[row][column] == "O" else
        {
            return
        }

        var queue = [(row: row, column: column)]
        var index = 0
        board[row][column] = "S"

        while index < queue.count
        {
            let current = queue[index]
            index += 1

            for direction in directions
            {
                let nextRow = current.row + direction.row
                let nextColumn = current.column + direction.column

                guard nextRow >= 0, nextRow < board.count else
                {
                    continue
                }

                guard nextColumn >= 0, nextColumn < board[nextRow].count else
                {
                    continue
                }

                if board[nextRow][nextColumn] == "O"
                {
                    board[nextRow][nextColumn] = "S"
                    queue.append((nextRow, nextColumn))
                }
            }
        }
    }

    private static let directions: [(row: Int, column: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]
}
