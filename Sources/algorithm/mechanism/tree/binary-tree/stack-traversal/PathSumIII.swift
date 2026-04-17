public enum PathSumIII
{
    public static func solve(_ root: TreeNode?, _ targetSum: Int) -> Int
    {
        guard let root else
        {
            return 0
        }

        var pathCountByPrefixSum = [0: 1]
        var matchingPathCount = 0
        var pendingFrames: [(node: TreeNode, prefixSum: Int, isExiting: Bool)] = [(root, 0, false)]

        while let pendingFrame = pendingFrames.popLast()
        {
            if pendingFrame.isExiting
            {
                let remainingCount = pathCountByPrefixSum[pendingFrame.prefixSum, default: 0] - 1

                if remainingCount == 0
                {
                    pathCountByPrefixSum.removeValue(forKey: pendingFrame.prefixSum)
                }
                else
                {
                    pathCountByPrefixSum[pendingFrame.prefixSum] = remainingCount
                }

                continue
            }

            let nextPrefixSum = pendingFrame.prefixSum + pendingFrame.node.value
            matchingPathCount += pathCountByPrefixSum[nextPrefixSum - targetSum, default: 0]
            pathCountByPrefixSum[nextPrefixSum, default: 0] += 1

            pendingFrames.append((pendingFrame.node, nextPrefixSum, true))

            if let rightChild = pendingFrame.node.right
            {
                pendingFrames.append((rightChild, nextPrefixSum, false))
            }

            if let leftChild = pendingFrame.node.left
            {
                pendingFrames.append((leftChild, nextPrefixSum, false))
            }
        }

        return matchingPathCount
    }
}
