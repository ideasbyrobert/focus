public enum SymmetricTree
{
    public static func solve(_ root: TreeNode?) -> Bool
    {
        isMirror(root?.left, root?.right)
    }

    private static func isMirror(_ left: TreeNode?, _ right: TreeNode?) -> Bool
    {
        switch (left, right)
        {
        case (nil, nil):
            return true
        case let (left?, right?):
            return left.value == right.value
                && isMirror(left.left, right.right)
                && isMirror(left.right, right.left)
        default:
            return false
        }
    }
}
