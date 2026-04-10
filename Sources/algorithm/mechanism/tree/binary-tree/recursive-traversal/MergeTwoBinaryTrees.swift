public enum MergeTwoBinaryTrees
{
    public static func solve(_ first: TreeNode?, _ second: TreeNode?) -> TreeNode?
    {
        switch (first, second)
        {
        case (nil, nil):
            return nil
        case let (first?, nil):
            return TreeNode(first.value, left: solve(first.left, nil), right: solve(first.right, nil))
        case let (nil, second?):
            return TreeNode(second.value, left: solve(nil, second.left), right: solve(nil, second.right))
        case let (first?, second?):
            return TreeNode(
                first.value + second.value,
                left: solve(first.left, second.left),
                right: solve(first.right, second.right)
            )
        }
    }
}
