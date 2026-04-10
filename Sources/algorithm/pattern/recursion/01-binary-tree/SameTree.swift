public enum SameTree
{
    public static func solve(_ first: TreeNode?, _ second: TreeNode?) -> Bool
    {
        switch (first, second)
        {
        case (nil, nil):
            return true
        case let (first?, second?):
            return first.value == second.value
                && solve(first.left, second.left)
                && solve(first.right, second.right)
        default:
            return false
        }
    }
}
