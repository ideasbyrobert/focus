public enum FlattenBinaryTreeToLinkedList
{
    public static func solve(_ root: TreeNode?)
    {
        guard let root else
        {
            return
        }

        var pendingNodes = [root]

        while let currentNode = pendingNodes.popLast()
        {
            if let rightChild = currentNode.right
            {
                pendingNodes.append(rightChild)
            }

            if let leftChild = currentNode.left
            {
                pendingNodes.append(leftChild)
            }

            currentNode.left = nil
            currentNode.right = pendingNodes.last
        }
    }
}
