public enum ValidSudoku
{
    public static func solve(_ board: [[Character]]) -> Bool
    {
        var seenRows = Array(repeating: Set<Character>(), count: 9)
        var seenColumns = Array(repeating: Set<Character>(), count: 9)
        var seenBoxes = Array(repeating: Set<Character>(), count: 9)

        for row in 0..<9
        {
            for column in 0..<9
            {
                let value = board[row][column]

                if value == "."
                {
                    continue
                }

                let boxIndex = (row / 3) * 3 + (column / 3)

                if seenRows[row].contains(value) || seenColumns[column].contains(value) || seenBoxes[boxIndex].contains(value)
                {
                    return false
                }

                seenRows[row].insert(value)
                seenColumns[column].insert(value)
                seenBoxes[boxIndex].insert(value)
            }
        }

        return true
    }
}
