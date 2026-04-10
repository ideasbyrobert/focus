public enum SearchInABinarySearchTree
{
    public static func solve(_ root: TreeNode?, _ value: Int) -> TreeNode?
    {
        guard let root else
        {
            return nil
        }

        if root.value == value
        {
            return root
        }

        if value < root.value
        {
            return solve(root.left, value)
        }

        return solve(root.right, value)
    }
}
