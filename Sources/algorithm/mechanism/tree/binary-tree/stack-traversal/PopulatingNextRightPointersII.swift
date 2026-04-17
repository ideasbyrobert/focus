public enum PopulatingNextRightPointersII
{
    public static func solve(_ root: NextTreeNode?) -> NextTreeNode?
    {
        guard let root else
        {
            return nil
        }

        var nextNodeByDepth: [Int: NextTreeNode] = [:]
        var pendingNodes: [(node: NextTreeNode, depth: Int)] = [(root, 0)]

        while let pendingNode = pendingNodes.popLast()
        {
            pendingNode.node.next = nextNodeByDepth[pendingNode.depth]
            nextNodeByDepth[pendingNode.depth] = pendingNode.node

            if let leftChild = pendingNode.node.left
            {
                pendingNodes.append((leftChild, pendingNode.depth + 1))
            }

            if let rightChild = pendingNode.node.right
            {
                pendingNodes.append((rightChild, pendingNode.depth + 1))
            }
        }

        return root
    }
}
