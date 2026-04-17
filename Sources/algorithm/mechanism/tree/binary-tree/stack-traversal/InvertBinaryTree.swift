public enum InvertBinaryTree
{
    public static func solve(_ root: TreeNode?) -> TreeNode?
    {
        guard let root else
        {
            return nil
        }

        var pendingNodes = [root]

        while let currentNode = pendingNodes.popLast()
        {
            let originalLeftChild = currentNode.left
            currentNode.left = currentNode.right
            currentNode.right = originalLeftChild

            if let leftChild = currentNode.left
            {
                pendingNodes.append(leftChild)
            }

            if let rightChild = currentNode.right
            {
                pendingNodes.append(rightChild)
            }
        }

        return root
    }
}
