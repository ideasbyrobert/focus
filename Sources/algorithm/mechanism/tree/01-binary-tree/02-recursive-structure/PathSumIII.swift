public enum PathSumIII
{
    public static func solve(_ root: TreeNode?, _ targetSum: Int) -> Int
    {
        var countsByPrefixSum = [0: 1]
        return count(root, targetSum: targetSum, currentSum: 0, countsByPrefixSum: &countsByPrefixSum)
    }

    private static func count(
        _ node: TreeNode?,
        targetSum: Int,
        currentSum: Int,
        countsByPrefixSum: inout [Int: Int]
    ) -> Int
    {
        guard let node else
        {
            return 0
        }

        let nextSum = currentSum + node.value
        var total = countsByPrefixSum[nextSum - targetSum, default: 0]

        countsByPrefixSum[nextSum, default: 0] += 1

        total += count(node.left, targetSum: targetSum, currentSum: nextSum, countsByPrefixSum: &countsByPrefixSum)
        total += count(node.right, targetSum: targetSum, currentSum: nextSum, countsByPrefixSum: &countsByPrefixSum)

        countsByPrefixSum[nextSum, default: 0] -= 1

        return total
    }
}
