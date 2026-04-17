public final class TreeNode
{
    public var value: Int
    public var left: TreeNode?
    public var right: TreeNode?

    public init(_ value: Int, left: TreeNode? = nil, right: TreeNode? = nil)
    {
        self.value = value
        self.left = left
        self.right = right
    }
}
