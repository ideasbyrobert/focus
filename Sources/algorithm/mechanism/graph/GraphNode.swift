public final class GraphNode: Hashable
{
    public var value: Int
    public var neighbors: [GraphNode]

    public init(_ value: Int, neighbors: [GraphNode] = [])
    {
        self.value = value
        self.neighbors = neighbors
    }

    public static func == (lhs: GraphNode, rhs: GraphNode) -> Bool
    {
        lhs === rhs
    }

    public func hash(into hasher: inout Hasher)
    {
        hasher.combine(ObjectIdentifier(self))
    }
}
