public enum SnakesAndLadders
{
    public static func solve(_ board: [[Int]]) -> Int
    {
        let targetSquare = board.count * board.count
        var queue = [(square: 1, moves: 0)]
        var index = 0
        var visited: Set<Int> = [1]

        while index < queue.count
        {
            let current = queue[index]
            index += 1

            if current.square == targetSquare
            {
                return current.moves
            }

            for roll in 1...6
            {
                let nextSquare = current.square + roll

                if nextSquare > targetSquare
                {
                    break
                }

                let destination = destinationSquare(for: nextSquare, on: board)

                if visited.insert(destination).inserted
                {
                    queue.append((destination, current.moves + 1))
                }
            }
        }

        return -1
    }

    private static func destinationSquare(for square: Int, on board: [[Int]]) -> Int
    {
        let coordinates = boardCoordinates(for: square, boardSize: board.count)
        let boardValue = board[coordinates.row][coordinates.column]

        return boardValue == -1 ? square : boardValue
    }

    private static func boardCoordinates(for square: Int, boardSize: Int) -> (row: Int, column: Int)
    {
        let zeroBasedSquare = square - 1
        let rowFromBottom = zeroBasedSquare / boardSize
        let row = boardSize - 1 - rowFromBottom
        let columnOffset = zeroBasedSquare % boardSize
        let column = rowFromBottom % 2 == 0 ? columnOffset : boardSize - 1 - columnOffset

        return (row, column)
    }
}
