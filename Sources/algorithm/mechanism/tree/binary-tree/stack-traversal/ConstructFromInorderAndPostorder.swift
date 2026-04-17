public enum ConstructFromInorderAndPostorder
{
    public static func solve(_ inorder: [Int], _ postorder: [Int]) -> TreeNode?
    {
        guard let rootValue = postorder.last else
        {
            return nil
        }

        let root = TreeNode(rootValue)
        var pendingAncestors = [root]
        var inorderIndex = inorder.count - 1

        for value in postorder.dropLast().reversed()
        {
            let currentNode = TreeNode(value)

            if pendingAncestors.last?.value != inorder[inorderIndex]
            {
                pendingAncestors.last?.right = currentNode
            }
            else
            {
                var parentNode: TreeNode?

                while let lastAncestor = pendingAncestors.last, lastAncestor.value == inorder[inorderIndex]
                {
                    parentNode = pendingAncestors.removeLast()
                    inorderIndex -= 1
                }

                parentNode?.left = currentNode
            }

            pendingAncestors.append(currentNode)
        }

        return root
    }
}
