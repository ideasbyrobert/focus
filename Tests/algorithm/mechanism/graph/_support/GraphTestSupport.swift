@testable import AlgorithmGraph

func buildGraph(_ adjacency: [[Int]]) -> GraphNode?
{
    guard !adjacency.isEmpty else
    {
        return nil
    }

    let nodes = adjacency.indices.map
    {
        GraphNode($0 + 1)
    }

    for index in adjacency.indices
    {
        nodes[index].neighbors = adjacency[index].map
        {
            nodes[$0 - 1]
        }
    }

    return nodes[0]
}

func adjacencyList(from node: GraphNode?) -> [[Int]]
{
    guard let node else
    {
        return []
    }

    var queue = [node]
    var index = 0
    var visited: Set<GraphNode> = [node]
    var nodesByValue: [Int: GraphNode] = [node.value: node]

    while index < queue.count
    {
        let current = queue[index]
        index += 1

        for neighbor in current.neighbors
        {
            if visited.insert(neighbor).inserted
            {
                queue.append(neighbor)
                nodesByValue[neighbor.value] = neighbor
            }
        }
    }

    let sortedValues = nodesByValue.keys.sorted()

    return sortedValues.map
    {
        value in

        let node = nodesByValue[value]!

        return node.neighbors.map(\.value).sorted()
    }
}

func isDistinctClone(_ original: GraphNode?, _ copy: GraphNode?) -> Bool
{
    guard let original, let copy else
    {
        return original == nil && copy == nil
    }

    var queue: [(GraphNode, GraphNode)] = [(original, copy)]
    var visitedOriginal: Set<GraphNode> = []

    while !queue.isEmpty
    {
        let (left, right) = queue.removeFirst()

        if left === right
        {
            return false
        }

        if !visitedOriginal.insert(left).inserted
        {
            continue
        }

        if left.value != right.value || left.neighbors.count != right.neighbors.count
        {
            return false
        }

        let sortedLeftNeighbors = left.neighbors.sorted
        {
            $0.value < $1.value
        }

        let sortedRightNeighbors = right.neighbors.sorted
        {
            $0.value < $1.value
        }

        for neighborIndex in sortedLeftNeighbors.indices
        {
            queue.append((sortedLeftNeighbors[neighborIndex], sortedRightNeighbors[neighborIndex]))
        }
    }

    return true
}
