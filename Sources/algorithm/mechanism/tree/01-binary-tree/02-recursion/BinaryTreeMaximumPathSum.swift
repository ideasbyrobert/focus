public enum BinaryTreeMaximumPathSum
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        var bestSum = Int.min
        _ = gain(root, bestSum: &bestSum)
        return bestSum
    }

    private static func gain(_ node: TreeNode?, bestSum: inout Int) -> Int
    {
        guard let node else
        {
            return 0
        }

        let leftGain = max(0, gain(node.left, bestSum: &bestSum))
        let rightGain = max(0, gain(node.right, bestSum: &bestSum))

        bestSum = max(bestSum, node.value + leftGain + rightGain)

        return node.value + max(leftGain, rightGain)
    }
}
