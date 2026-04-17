public enum ConstructFromPreorderAndInorder
{
    public static func solve(_ preorder: [Int], _ inorder: [Int]) -> TreeNode?
    {
        guard let rootValue = preorder.first else
        {
            return nil
        }

        let root = TreeNode(rootValue)
        var pendingAncestors = [root]
        var inorderIndex = 0

        for value in preorder.dropFirst()
        {
            let currentNode = TreeNode(value)

            if pendingAncestors.last?.value != inorder[inorderIndex]
            {
                pendingAncestors.last?.left = currentNode
            }
            else
            {
                var parentNode: TreeNode?

                while let lastAncestor = pendingAncestors.last, lastAncestor.value == inorder[inorderIndex]
                {
                    parentNode = pendingAncestors.removeLast()
                    inorderIndex += 1
                }

                parentNode?.right = currentNode
            }

            pendingAncestors.append(currentNode)
        }

        return root
    }
}
