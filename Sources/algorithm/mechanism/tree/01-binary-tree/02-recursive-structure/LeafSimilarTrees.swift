public enum LeafSimilarTrees
{
    public static func solve(_ first: TreeNode?, _ second: TreeNode?) -> Bool
    {
        leafValues(from: first) == leafValues(from: second)
    }

    private static func leafValues(from root: TreeNode?) -> [Int]
    {
        guard let root else
        {
            return []
        }

        if root.left == nil && root.right == nil
        {
            return [root.value]
        }

        return leafValues(from: root.left) + leafValues(from: root.right)
    }
}
