public enum Triangle
{
    public static func solve(_ triangle: [[Int]]) -> Int
    {
        guard var totals = triangle.last else
        {
            return 0
        }

        for rowIndex in stride(from: triangle.count - 2, through: 0, by: -1)
        {
            for columnIndex in 0...rowIndex
            {
                totals[columnIndex] = triangle[rowIndex][columnIndex] + min(
                    totals[columnIndex],
                    totals[columnIndex + 1]
                )
            }
        }

        return totals[0]
    }
}
