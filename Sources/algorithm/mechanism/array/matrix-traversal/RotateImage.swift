public enum RotateImage
{
    public static func solve(_ matrix: inout [[Int]])
    {
        guard matrix.count > 1 else
        {
            return
        }

        let size = matrix.count

        for row in 0..<size
        {
            for column in row + 1..<size
            {
                let originalValue = matrix[row][column]
                matrix[row][column] = matrix[column][row]
                matrix[column][row] = originalValue
            }
        }

        for row in 0..<size
        {
            matrix[row].reverse()
        }
    }
}
