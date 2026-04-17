public enum PathSum
{
    public static func solve(_ root: TreeNode?, _ targetSum: Int) -> Bool
    {
        guard let root else
        {
            return false
        }

        var pendingNodes: [(node: TreeNode, remainingSum: Int)] = [(root, targetSum - root.value)]

        while let pendingNode = pendingNodes.popLast()
        {
            if pendingNode.node.left == nil && pendingNode.node.right == nil
            {
                if pendingNode.remainingSum == 0
                {
                    return true
                }

                continue
            }

            if let leftChild = pendingNode.node.left
            {
                pendingNodes.append((leftChild, pendingNode.remainingSum - leftChild.value))
            }

            if let rightChild = pendingNode.node.right
            {
                pendingNodes.append((rightChild, pendingNode.remainingSum - rightChild.value))
            }
        }

        return false
    }
}
