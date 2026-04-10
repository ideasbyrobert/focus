public final class BSTIterator
{
    private var stack: [TreeNode] = []

    public init(_ root: TreeNode?)
    {
        pushLeftBranch(from: root)
    }

    public func next() -> Int
    {
        let node = stack.removeLast()
        pushLeftBranch(from: node.right)
        return node.value
    }

    public func hasNext() -> Bool
    {
        !stack.isEmpty
    }

    private func pushLeftBranch(from root: TreeNode?)
    {
        var current = root

        while let node = current
        {
            stack.append(node)
            current = node.left
        }
    }
}
