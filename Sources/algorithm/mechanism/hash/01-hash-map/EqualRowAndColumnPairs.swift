public enum EqualRowAndColumnPairs
{
    public static func solve(_ grid: [[Int]]) -> Int
    {
        var rowCounts: [String: Int] = [:]

        for row in grid
        {
            rowCounts[key(for: row), default: 0] += 1
        }

        var pairCount = 0
        let size = grid.count

        for columnIndex in 0..<size
        {
            var column: [Int] = []

            for rowIndex in 0..<size
            {
                column.append(grid[rowIndex][columnIndex])
            }

            pairCount += rowCounts[key(for: column), default: 0]
        }

        return pairCount
    }

    private static func key(for values: [Int]) -> String
    {
        values.map(String.init).joined(separator: ",")
    }
}
