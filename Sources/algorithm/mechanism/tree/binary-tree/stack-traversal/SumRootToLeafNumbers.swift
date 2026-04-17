public enum SumRootToLeafNumbers
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        var totalValue = 0
        var pendingNodes: [(node: TreeNode, pathValue: Int)] = [(root, root.value)]

        while let pendingNode = pendingNodes.popLast()
        {
            if pendingNode.node.left == nil && pendingNode.node.right == nil
            {
                totalValue += pendingNode.pathValue
                continue
            }

            if let leftChild = pendingNode.node.left
            {
                pendingNodes.append((leftChild, (pendingNode.pathValue * 10) + leftChild.value))
            }

            if let rightChild = pendingNode.node.right
            {
                pendingNodes.append((rightChild, (pendingNode.pathValue * 10) + rightChild.value))
            }
        }

        return totalValue
    }
}
