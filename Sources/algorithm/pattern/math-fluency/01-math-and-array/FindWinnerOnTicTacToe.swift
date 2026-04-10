public enum FindWinnerOnTicTacToe
{
    public static func solve(_ moves: [[Int]]) -> String
    {
        var rows = Array(repeating: 0, count: 3)
        var columns = Array(repeating: 0, count: 3)
        var diagonal = 0
        var antiDiagonal = 0

        for (turn, move) in moves.enumerated()
        {
            let row = move[0]
            let column = move[1]
            let mark = turn.isMultiple(of: 2) ? 1 : -1

            rows[row] += mark
            columns[column] += mark

            if row == column
            {
                diagonal += mark
            }

            if row + column == 2
            {
                antiDiagonal += mark
            }

            if abs(rows[row]) == 3 || abs(columns[column]) == 3 || abs(diagonal) == 3 || abs(antiDiagonal) == 3
            {
                return mark == 1 ? "A" : "B"
            }
        }

        return moves.count == 9 ? "Draw" : "Pending"
    }
}
