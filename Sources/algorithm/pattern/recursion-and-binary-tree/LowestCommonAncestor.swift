public enum LowestCommonAncestor
{
    public static func solve(_ root: TreeNode?, _ first: TreeNode?, _ second: TreeNode?) -> TreeNode?
    {
        guard let root else
        {
            return nil
        }

        if root === first || root === second
        {
            return root
        }

        let left = solve(root.left, first, second)
        let right = solve(root.right, first, second)

        if left != nil && right != nil
        {
            return root
        }

        return left ?? right
    }
}
