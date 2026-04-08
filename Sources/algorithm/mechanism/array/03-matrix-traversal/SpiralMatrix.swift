public enum SpiralMatrix
{
    public static func solve(_ matrix: [[Int]]) -> [Int]
    {
        guard !matrix.isEmpty, !matrix[0].isEmpty else
        {
            return []
        }

        var topRow = 0
        var bottomRow = matrix.count - 1
        var leftColumn = 0
        var rightColumn = matrix[0].count - 1
        var traversal: [Int] = []

        traversal.reserveCapacity(matrix.count * matrix[0].count)

        while topRow <= bottomRow && leftColumn <= rightColumn
        {
            for column in leftColumn...rightColumn
            {
                traversal.append(matrix[topRow][column])
            }

            topRow += 1

            if topRow > bottomRow
            {
                break
            }

            for row in topRow...bottomRow
            {
                traversal.append(matrix[row][rightColumn])
            }

            rightColumn -= 1

            if leftColumn > rightColumn
            {
                break
            }

            for column in stride(from: rightColumn, through: leftColumn, by: -1)
            {
                traversal.append(matrix[bottomRow][column])
            }

            bottomRow -= 1

            if topRow > bottomRow
            {
                break
            }

            for row in stride(from: bottomRow, through: topRow, by: -1)
            {
                traversal.append(matrix[row][leftColumn])
            }

            leftColumn += 1
        }

        return traversal
    }
}
