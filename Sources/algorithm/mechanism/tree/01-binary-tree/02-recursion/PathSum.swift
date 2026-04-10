public enum PathSum
{
    public static func solve(_ root: TreeNode?, _ targetSum: Int) -> Bool
    {
        guard let root else
        {
            return false
        }

        let remaining = targetSum - root.value

        if root.left == nil && root.right == nil
        {
            return remaining == 0
        }

        return solve(root.left, remaining) || solve(root.right, remaining)
    }
}
