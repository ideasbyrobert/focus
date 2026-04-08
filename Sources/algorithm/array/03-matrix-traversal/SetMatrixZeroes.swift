public enum SetMatrixZeroes
{
    public static func solve(_ matrix: inout [[Int]])
    {
        guard !matrix.isEmpty, !matrix[0].isEmpty else
        {
            return
        }

        let rowCount = matrix.count
        let columnCount = matrix[0].count
        let firstRowHasZero = matrix[0].contains(0)
        let firstColumnHasZero = matrix.contains
        {
            $0[0] == 0
        }

        if rowCount > 1 && columnCount > 1
        {
            for row in 1..<rowCount
            {
                for column in 1..<columnCount
                {
                    if matrix[row][column] == 0
                    {
                        matrix[row][0] = 0
                        matrix[0][column] = 0
                    }
                }
            }

            for row in 1..<rowCount
            {
                if matrix[row][0] == 0
                {
                    for column in 1..<columnCount
                    {
                        matrix[row][column] = 0
                    }
                }
            }

            for column in 1..<columnCount
            {
                if matrix[0][column] == 0
                {
                    for row in 1..<rowCount
                    {
                        matrix[row][column] = 0
                    }
                }
            }
        }

        if firstRowHasZero
        {
            for column in 0..<columnCount
            {
                matrix[0][column] = 0
            }
        }

        if firstColumnHasZero
        {
            for row in 0..<rowCount
            {
                matrix[row][0] = 0
            }
        }
    }
}
