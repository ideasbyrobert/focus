public enum MaximumDepthOfBinaryTree
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        var maximumDepth = 0
        var pendingNodes: [(node: TreeNode, depth: Int)] = [(root, 1)]

        while let pendingNode = pendingNodes.popLast()
        {
            maximumDepth = max(maximumDepth, pendingNode.depth)

            if let leftChild = pendingNode.node.left
            {
                pendingNodes.append((leftChild, pendingNode.depth + 1))
            }

            if let rightChild = pendingNode.node.right
            {
                pendingNodes.append((rightChild, pendingNode.depth + 1))
            }
        }

        return maximumDepth
    }
}
