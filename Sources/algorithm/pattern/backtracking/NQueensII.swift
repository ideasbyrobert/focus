public enum NQueensII
{
    public static func solve(_ size: Int) -> Int
    {
        guard size > 0 else
        {
            return 0
        }

        var occupiedColumns: Set<Int> = []
        var occupiedDescendingDiagonals: Set<Int> = []
        var occupiedAscendingDiagonals: Set<Int> = []
        var solutionCount = 0

        func placeQueen(in row: Int)
        {
            if row == size
            {
                solutionCount += 1
                return
            }

            for column in 0..<size
            {
                let descendingDiagonal = row - column
                let ascendingDiagonal = row + column

                if occupiedColumns.contains(column) ||
                    occupiedDescendingDiagonals.contains(descendingDiagonal) ||
                    occupiedAscendingDiagonals.contains(ascendingDiagonal)
                {
                    continue
                }

                occupiedColumns.insert(column)
                occupiedDescendingDiagonals.insert(descendingDiagonal)
                occupiedAscendingDiagonals.insert(ascendingDiagonal)

                placeQueen(in: row + 1)

                occupiedColumns.remove(column)
                occupiedDescendingDiagonals.remove(descendingDiagonal)
                occupiedAscendingDiagonals.remove(ascendingDiagonal)
            }
        }

        placeQueen(in: 0)

        return solutionCount
    }
}
