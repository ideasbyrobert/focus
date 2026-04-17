public enum LeafSimilarTrees
{
    public static func solve(_ first: TreeNode?, _ second: TreeNode?) -> Bool
    {
        leafValues(from: first) == leafValues(from: second)
    }

    private static func leafValues(from root: TreeNode?) -> [Int]
    {
        guard let root else
        {
            return []
        }

        var leafValues: [Int] = []
        var pendingNodes = [root]

        while let currentNode = pendingNodes.popLast()
        {
            if currentNode.left == nil && currentNode.right == nil
            {
                leafValues.append(currentNode.value)
                continue
            }

            if let rightChild = currentNode.right
            {
                pendingNodes.append(rightChild)
            }

            if let leftChild = currentNode.left
            {
                pendingNodes.append(leftChild)
            }
        }

        return leafValues
    }
}
