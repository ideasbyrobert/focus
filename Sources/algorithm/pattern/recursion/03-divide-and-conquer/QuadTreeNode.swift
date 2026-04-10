public final class QuadTreeNode
{
    public var value: Bool
    public var isLeaf: Bool
    public var topLeft: QuadTreeNode?
    public var topRight: QuadTreeNode?
    public var bottomLeft: QuadTreeNode?
    public var bottomRight: QuadTreeNode?

    public init(
        value: Bool,
        isLeaf: Bool,
        topLeft: QuadTreeNode? = nil,
        topRight: QuadTreeNode? = nil,
        bottomLeft: QuadTreeNode? = nil,
        bottomRight: QuadTreeNode? = nil
    )
    {
        self.value = value
        self.isLeaf = isLeaf
        self.topLeft = topLeft
        self.topRight = topRight
        self.bottomLeft = bottomLeft
        self.bottomRight = bottomRight
    }
}
