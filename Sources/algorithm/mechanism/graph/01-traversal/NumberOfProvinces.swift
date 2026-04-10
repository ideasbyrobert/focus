public enum NumberOfProvinces
{
    public static func solve(_ isConnected: [[Int]]) -> Int
    {
        guard !isConnected.isEmpty else
        {
            return 0
        }

        var visited = Array(repeating: false, count: isConnected.count)
        var provinceCount = 0

        for city in isConnected.indices
        {
            if visited[city]
            {
                continue
            }

            provinceCount += 1
            traverseProvince(startingAt: city, in: isConnected, visited: &visited)
        }

        return provinceCount
    }

    private static func traverseProvince(startingAt city: Int, in isConnected: [[Int]], visited: inout [Bool])
    {
        var stack = [city]

        while let current = stack.popLast()
        {
            if visited[current]
            {
                continue
            }

            visited[current] = true

            for neighbor in isConnected[current].indices
            {
                if isConnected[current][neighbor] == 1 && !visited[neighbor]
                {
                    stack.append(neighbor)
                }
            }
        }
    }
}
