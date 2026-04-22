public enum DiameterOfBinaryTree
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        var maximumDiameterInEdges = 0
        var heightByNodeIdentifier: [ObjectIdentifier: Int] = [:]
        var pendingTraversalFrames: [TraversalFrame] = [.arrive(root)]

        while let pendingTraversalFrame = pendingTraversalFrames.popLast()
        {
            switch pendingTraversalFrame
            {
            case let .returnAfterChildren(node):
                let leftSubtreeHeight = storedHeight(
                    of: node.left,
                    in: heightByNodeIdentifier
                )
                let rightSubtreeHeight = storedHeight(
                    of: node.right,
                    in: heightByNodeIdentifier
                )
                let diameterThroughNode = leftSubtreeHeight + rightSubtreeHeight
                let nodeHeight = 1 + max(leftSubtreeHeight, rightSubtreeHeight)

                maximumDiameterInEdges = max(
                    maximumDiameterInEdges,
                    diameterThroughNode
                )
                heightByNodeIdentifier[ObjectIdentifier(node)] = nodeHeight

            case let .arrive(node):
                pendingTraversalFrames.append(.returnAfterChildren(node))

                if let rightChild = node.right
                {
                    pendingTraversalFrames.append(.arrive(rightChild))
                }

                if let leftChild = node.left
                {
                    pendingTraversalFrames.append(.arrive(leftChild))
                }
            }
        }

        return maximumDiameterInEdges
    }

    private static func storedHeight(
        of node: TreeNode?,
        in heightByNodeIdentifier: [ObjectIdentifier: Int]
    ) -> Int
    {
        guard let node else
        {
            return 0
        }

        return heightByNodeIdentifier[ObjectIdentifier(node)] ?? 0
    }

    private enum TraversalFrame
    {
        case arrive(TreeNode)
        case returnAfterChildren(TreeNode)
    }
}
