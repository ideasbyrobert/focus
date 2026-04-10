public enum SumRootToLeafNumbers
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        sum(root, currentValue: 0)
    }

    private static func sum(_ node: TreeNode?, currentValue: Int) -> Int
    {
        guard let node else
        {
            return 0
        }

        let nextValue = (currentValue * 10) + node.value

        if node.left == nil && node.right == nil
        {
            return nextValue
        }

        return sum(node.left, currentValue: nextValue) + sum(node.right, currentValue: nextValue)
    }
}
