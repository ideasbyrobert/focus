public enum ConstructQuadTree
{
    public static func solve(_ grid: [[Int]]) -> QuadTreeNode?
    {
        guard !grid.isEmpty else
        {
            return nil
        }

        return build(grid, row: 0, column: 0, size: grid.count)
    }

    private static func build(_ grid: [[Int]], row: Int, column: Int, size: Int) -> QuadTreeNode
    {
        if isUniform(grid, row: row, column: column, size: size)
        {
            return QuadTreeNode(value: grid[row][column] == 1, isLeaf: true)
        }

        let half = size / 2

        return QuadTreeNode(
            value: true,
            isLeaf: false,
            topLeft: build(grid, row: row, column: column, size: half),
            topRight: build(grid, row: row, column: column + half, size: half),
            bottomLeft: build(grid, row: row + half, column: column, size: half),
            bottomRight: build(grid, row: row + half, column: column + half, size: half)
        )
    }

    private static func isUniform(_ grid: [[Int]], row: Int, column: Int, size: Int) -> Bool
    {
        let value = grid[row][column]

        for currentRow in row..<(row + size)
        {
            for currentColumn in column..<(column + size)
            {
                if grid[currentRow][currentColumn] != value
                {
                    return false
                }
            }
        }

        return true
    }
}
