public enum InvertBinaryTree
{
    public static func solve(_ root: TreeNode?) -> TreeNode?
    {
        guard let root else
        {
            return nil
        }

        let originalLeft = root.left
        root.left = solve(root.right)
        root.right = solve(originalLeft)

        return root
    }
}
