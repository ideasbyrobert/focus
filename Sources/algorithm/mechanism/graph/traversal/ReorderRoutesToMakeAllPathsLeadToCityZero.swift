public enum ReorderRoutesToMakeAllPathsLeadToCityZero
{
    public static func solve(_ cityCount: Int, _ connections: [[Int]]) -> Int
    {
        guard cityCount > 1 else
        {
            return 0
        }

        var adjacency = Array(repeating: [(neighbor: Int, needsReversal: Int)](), count: cityCount)

        for connection in connections
        {
            let from = connection[0]
            let to = connection[1]

            adjacency[from].append((to, 1))
            adjacency[to].append((from, 0))
        }

        var queue = [0]
        var index = 0
        var visited = Array(repeating: false, count: cityCount)
        visited[0] = true
        var reversalCount = 0

        while index < queue.count
        {
            let city = queue[index]
            index += 1

            for edge in adjacency[city]
            {
                if visited[edge.neighbor]
                {
                    continue
                }

                visited[edge.neighbor] = true
                reversalCount += edge.needsReversal
                queue.append(edge.neighbor)
            }
        }

        return reversalCount
    }
}
