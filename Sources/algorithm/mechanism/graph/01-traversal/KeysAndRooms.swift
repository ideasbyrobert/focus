public enum KeysAndRooms
{
    public static func solve(_ rooms: [[Int]]) -> Bool
    {
        guard !rooms.isEmpty else
        {
            return true
        }

        var visited = Array(repeating: false, count: rooms.count)
        var stack = [0]
        var visitedCount = 0

        while let room = stack.popLast()
        {
            if visited[room]
            {
                continue
            }

            visited[room] = true
            visitedCount += 1

            for key in rooms[room]
            {
                if !visited[key]
                {
                    stack.append(key)
                }
            }
        }

        return visitedCount == rooms.count
    }
}
