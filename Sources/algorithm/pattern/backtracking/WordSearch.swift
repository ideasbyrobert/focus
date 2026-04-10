public enum WordSearch
{
    public static func solve(_ board: [[Character]], _ word: String) -> Bool
    {
        if word.isEmpty
        {
            return true
        }

        guard !board.isEmpty, !board[0].isEmpty else
        {
            return false
        }

        var board = board
        let target = Array(word)
        let rowCount = board.count
        let columnCount = board[0].count

        func search(_ row: Int, _ column: Int, _ index: Int) -> Bool
        {
            if index == target.count
            {
                return true
            }

            guard row >= 0, row < rowCount, column >= 0, column < columnCount else
            {
                return false
            }

            if board[row][column] != target[index]
            {
                return false
            }

            let original = board[row][column]
            board[row][column] = "#"

            let found =
                search(row + 1, column, index + 1) ||
                search(row - 1, column, index + 1) ||
                search(row, column + 1, index + 1) ||
                search(row, column - 1, index + 1)

            board[row][column] = original

            return found
        }

        for row in 0..<rowCount
        {
            for column in 0..<columnCount
            {
                if search(row, column, 0)
                {
                    return true
                }
            }
        }

        return false
    }
}
