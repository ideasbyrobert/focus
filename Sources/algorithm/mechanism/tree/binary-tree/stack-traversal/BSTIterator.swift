public final class BSTIterator
{
    private var leftBranchNodes: [TreeNode] = []

    public init(_ root: TreeNode?)
    {
        pushLeftBranch(from: root)
    }

    public func next() -> Int
    {
        let nextNode = leftBranchNodes.removeLast()
        pushLeftBranch(from: nextNode.right)
        return nextNode.value
    }

    public func hasNext() -> Bool
    {
        !leftBranchNodes.isEmpty
    }

    private func pushLeftBranch(from root: TreeNode?)
    {
        var currentNode = root

        while let node = currentNode
        {
            leftBranchNodes.append(node)
            currentNode = node.left
        }
    }
}
