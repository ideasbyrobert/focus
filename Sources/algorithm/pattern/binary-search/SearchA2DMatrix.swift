public enum SearchA2DMatrix
{
    public static func solve(_ matrix: [[Int]], target: Int) -> Bool
    {
        guard let columnCount = matrix.first?.count, columnCount > 0 else
        {
            return false
        }

        var left = 0
        var right = (matrix.count * columnCount) - 1

        while left <= right
        {
            let middle = left + ((right - left) / 2)
            let row = middle / columnCount
            let column = middle % columnCount
            let value = matrix[row][column]

            if value == target
            {
                return true
            }

            if value < target
            {
                left = middle + 1
            }
            else
            {
                right = middle - 1
            }
        }

        return false
    }
}
