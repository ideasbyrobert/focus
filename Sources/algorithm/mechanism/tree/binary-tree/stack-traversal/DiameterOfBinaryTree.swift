public enum DiameterOfBinaryTree
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        var maximumDiameter = 0
        var depthByNodeIdentifier: [ObjectIdentifier: Int] = [:]
        var pendingFrames: [(node: TreeNode, didVisitChildren: Bool)] = [(root, false)]

        while let pendingFrame = pendingFrames.popLast()
        {
            if pendingFrame.didVisitChildren
            {
                let leftDepth = pendingFrame.node.left.map
                {
                    depthByNodeIdentifier[ObjectIdentifier($0)] ?? 0
                } ?? 0
                let rightDepth = pendingFrame.node.right.map
                {
                    depthByNodeIdentifier[ObjectIdentifier($0)] ?? 0
                } ?? 0

                maximumDiameter = max(maximumDiameter, leftDepth + rightDepth)
                depthByNodeIdentifier[ObjectIdentifier(pendingFrame.node)] = 1 + max(leftDepth, rightDepth)
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

        return maximumDiameter
    }
}
