public enum CountGoodNodesInBinaryTree
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        var goodNodeCount = 0
        var pendingNodes: [(node: TreeNode, maximumSoFar: Int)] = [(root, root.value)]

        while let pendingNode = pendingNodes.popLast()
        {
            if pendingNode.node.value >= pendingNode.maximumSoFar
            {
                goodNodeCount += 1
            }

            let nextMaximum = max(pendingNode.maximumSoFar, pendingNode.node.value)

            if let leftChild = pendingNode.node.left
            {
                pendingNodes.append((leftChild, nextMaximum))
            }

            if let rightChild = pendingNode.node.right
            {
                pendingNodes.append((rightChild, nextMaximum))
            }
        }

        return goodNodeCount
    }
}
