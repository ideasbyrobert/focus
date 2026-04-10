public enum MaximumDepthOfBinaryTree
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        return 1 + max(solve(root.left), solve(root.right))
    }
}
