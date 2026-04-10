public enum DeleteNodeInABST
{
    public static func solve(_ root: TreeNode?, _ key: Int) -> TreeNode?
    {
        guard let root else
        {
            return nil
        }

        if key < root.value
        {
            root.left = solve(root.left, key)
            return root
        }

        if key > root.value
        {
            root.right = solve(root.right, key)
            return root
        }

        if root.left == nil
        {
            return root.right
        }

        if root.right == nil
        {
            return root.left
        }

        let successor = minimumNode(in: root.right)
        root.value = successor.value
        root.right = solve(root.right, successor.value)

        return root
    }

    private static func minimumNode(in root: TreeNode?) -> TreeNode
    {
        var current = root!

        while let next = current.left
        {
            current = next
        }

        return current
    }
}
