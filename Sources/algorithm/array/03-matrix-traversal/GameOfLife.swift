public enum GameOfLife
{
    public static func solve(_ board: inout [[Int]])
    {
        guard !board.isEmpty, !board[0].isEmpty else
        {
            return
        }

        let rowCount = board.count
        let columnCount = board[0].count

        for row in 0..<rowCount
        {
            for column in 0..<columnCount
            {
                let liveNeighborCount = countLiveNeighbors(in: board, row: row, column: column)

                if board[row][column] == 1
                {
                    if liveNeighborCount < 2 || liveNeighborCount > 3
                    {
                        board[row][column] = -1
                    }
                }
                else if liveNeighborCount == 3
                {
                    board[row][column] = 2
                }
            }
        }

        for row in 0..<rowCount
        {
            for column in 0..<columnCount
            {
                if board[row][column] > 0
                {
                    board[row][column] = 1
                }
                else
                {
                    board[row][column] = 0
                }
            }
        }
    }

    private static func countLiveNeighbors(in board: [[Int]], row: Int, column: Int) -> Int
    {
        let rowRange = max(0, row - 1)...min(board.count - 1, row + 1)
        let columnRange = max(0, column - 1)...min(board[0].count - 1, column + 1)
        var liveNeighbors = 0

        for neighborRow in rowRange
        {
            for neighborColumn in columnRange
            {
                if neighborRow == row && neighborColumn == column
                {
                    continue
                }

                if board[neighborRow][neighborColumn] == 1 || board[neighborRow][neighborColumn] == -1
                {
                    liveNeighbors += 1
                }
            }
        }

        return liveNeighbors
    }
}
