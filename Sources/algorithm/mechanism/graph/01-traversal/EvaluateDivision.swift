public enum EvaluateDivision
{
    public static func solve(_ equations: [[String]], _ values: [Double], _ queries: [[String]]) -> [Double]
    {
        let graph = buildGraph(equations, values)

        return queries.map
        {
            query in

            evaluate(query, in: graph)
        }
    }

    private static func buildGraph(_ equations: [[String]], _ values: [Double]) -> [String: [(neighbor: String, weight: Double)]]
    {
        var graph: [String: [(neighbor: String, weight: Double)]] = [:]

        for index in equations.indices
        {
            let dividend = equations[index][0]
            let divisor = equations[index][1]
            let value = values[index]

            graph[dividend, default: []].append((divisor, value))
            graph[divisor, default: []].append((dividend, 1.0 / value))
        }

        return graph
    }

    private static func evaluate(_ query: [String], in graph: [String: [(neighbor: String, weight: Double)]]) -> Double
    {
        let source = query[0]
        let destination = query[1]

        guard graph[source] != nil, graph[destination] != nil else
        {
            return -1.0
        }

        if source == destination
        {
            return 1.0
        }

        var queue = [(node: source, product: 1.0)]
        var index = 0
        var visited: Set<String> = [source]

        while index < queue.count
        {
            let current = queue[index]
            index += 1

            for edge in graph[current.node] ?? []
            {
                if visited.contains(edge.neighbor)
                {
                    continue
                }

                let nextProduct = current.product * edge.weight

                if edge.neighbor == destination
                {
                    return nextProduct
                }

                visited.insert(edge.neighbor)
                queue.append((edge.neighbor, nextProduct))
            }
        }

        return -1.0
    }
}
