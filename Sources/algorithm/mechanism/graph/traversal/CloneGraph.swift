public enum CloneGraph
{
    public static func solve(_ node: GraphNode?) -> GraphNode?
    {
        guard let node else
        {
            return nil
        }

        let rootClone = GraphNode(node.value)
        var clones: [GraphNode: GraphNode] = [node: rootClone]
        var queue = [node]
        var index = 0

        while index < queue.count
        {
            let current = queue[index]
            index += 1
            let currentClone = clones[current]!

            for neighbor in current.neighbors
            {
                if clones[neighbor] == nil
                {
                    clones[neighbor] = GraphNode(neighbor.value)
                    queue.append(neighbor)
                }

                currentClone.neighbors.append(clones[neighbor]!)
            }
        }

        return rootClone
    }
}
