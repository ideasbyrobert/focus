public enum BinaryTreeMaximumPathSum
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return Int.min
        }

        var bestPathSum = Int.min
        var gainByNodeIdentifier: [ObjectIdentifier: Int] = [:]
        var pendingFrames: [(node: TreeNode, didVisitChildren: Bool)] = [(root, false)]

        while let pendingFrame = pendingFrames.popLast()
        {
            if pendingFrame.didVisitChildren
            {
                let leftGain = max(0, pendingFrame.node.left.map
                {
                    gainByNodeIdentifier[ObjectIdentifier($0)] ?? 0
                } ?? 0)
                let rightGain = max(0, pendingFrame.node.right.map
                {
                    gainByNodeIdentifier[ObjectIdentifier($0)] ?? 0
                } ?? 0)

                bestPathSum = max(bestPathSum, pendingFrame.node.value + leftGain + rightGain)
                gainByNodeIdentifier[ObjectIdentifier(pendingFrame.node)] = pendingFrame.node.value + max(leftGain, rightGain)
                continue
            }

            pendingFrames.append((pendingFrame.node, true))

            if let rightChild = pendingFrame.node.right
            {
                pendingFrames.append((rightChild, false))
            }

            if let leftChild = pendingFrame.node.left
            {
                pendingFrames.append((leftChild, false))
            }
        }

        return bestPathSum
    }
}
