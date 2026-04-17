public enum LongestZigZagPathInBinaryTree
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        var bestLength = 0
        var zigZagLengthsByNodeIdentifier: [ObjectIdentifier: (leftFirst: Int, rightFirst: Int)] = [:]
        var pendingFrames: [(node: TreeNode, didVisitChildren: Bool)] = [(root, false)]

        while let pendingFrame = pendingFrames.popLast()
        {
            if pendingFrame.didVisitChildren
            {
                let leftLengths = pendingFrame.node.left.flatMap
                {
                    zigZagLengthsByNodeIdentifier[ObjectIdentifier($0)]
                } ?? (-1, -1)
                let rightLengths = pendingFrame.node.right.flatMap
                {
                    zigZagLengthsByNodeIdentifier[ObjectIdentifier($0)]
                } ?? (-1, -1)

                let leftFirst = leftLengths.rightFirst + 1
                let rightFirst = rightLengths.leftFirst + 1

                bestLength = max(bestLength, max(leftFirst, rightFirst))
                zigZagLengthsByNodeIdentifier[ObjectIdentifier(pendingFrame.node)] = (leftFirst, rightFirst)
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

        return bestLength
    }
}
