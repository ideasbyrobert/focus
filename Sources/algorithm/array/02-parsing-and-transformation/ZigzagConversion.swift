public enum ZigzagConversion
{
    public static func solve(_ text: String, rowCount: Int) -> String
    {
        if rowCount <= 1 || rowCount >= text.count
        {
            return text
        }

        var rows = Array(repeating: "", count: rowCount)
        var currentRow = 0
        var movingDown = false

        for character in text
        {
            rows[currentRow].append(character)

            if currentRow == 0 || currentRow == rowCount - 1
            {
                movingDown.toggle()
            }

            currentRow += movingDown ? 1 : -1
        }

        return rows.joined()
    }
}
