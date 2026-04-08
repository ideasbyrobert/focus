public enum MatrixDiagonalSum
{
    public static func solve(_ matrix: [[Int]]) -> Int
    {
        guard !matrix.isEmpty else
        {
            return 0
        }

        let size = matrix.count
        var total = 0

        for index in 0..<size
        {
            total += matrix[index][index]

            let mirroredColumn = size - 1 - index

            if mirroredColumn != index
            {
                total += matrix[index][mirroredColumn]
            }
        }

        return total
    }
}
