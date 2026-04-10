public final class NextTreeNode
{
    public var value: Int
    public var left: NextTreeNode?
    public var right: NextTreeNode?
    public var next: NextTreeNode?

    public init(_ value: Int, left: NextTreeNode? = nil, right: NextTreeNode? = nil, next: NextTreeNode? = nil)
    {
        self.value = value
        self.left = left
        self.right = right
        self.next = next
    }
}
