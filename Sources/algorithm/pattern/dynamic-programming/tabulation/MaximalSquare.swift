public enum MaximalSquare
{
    public static func solve(_ matrix: [[Character]]) -> Int
    {
        guard let columnCount = matrix.first?.count, columnCount > 0 else
        {
            return 0
        }

        var previousRow = Array(repeating: 0, count: columnCount + 1)
        var bestSideLength = 0

        for row in matrix
        {
            var currentRow = Array(repeating: 0, count: columnCount + 1)

            for columnIndex in 1...columnCount
            {
                if row[columnIndex - 1] == "1"
                {
                    currentRow[columnIndex] = min(
                        currentRow[columnIndex - 1],
                        previousRow[columnIndex],
                        previousRow[columnIndex - 1]
                    ) + 1
                    bestSideLength = max(bestSideLength, currentRow[columnIndex])
                }
            }

            previousRow = currentRow
        }

        return bestSideLength * bestSideLength
    }
}
