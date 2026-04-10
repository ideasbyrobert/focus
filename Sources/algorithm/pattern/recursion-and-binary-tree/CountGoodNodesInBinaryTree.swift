public enum CountGoodNodesInBinaryTree
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        return count(root, maximumSoFar: root.value)
    }

    private static func count(_ node: TreeNode?, maximumSoFar: Int) -> Int
    {
        guard let node else
        {
            return 0
        }

        let nextMaximum = max(maximumSoFar, node.value)
        let currentCount = node.value >= maximumSoFar ? 1 : 0

        return currentCount
            + count(node.left, maximumSoFar: nextMaximum)
            + count(node.right, maximumSoFar: nextMaximum)
    }
}
