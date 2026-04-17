public enum MergeTwoBinaryTrees
{
    public static func solve(_ first: TreeNode?, _ second: TreeNode?) -> TreeNode?
    {
        guard let mergedRoot = makeMergedNode(first, second) else
        {
            return nil
        }

        var pendingNodes: [(merged: TreeNode, first: TreeNode?, second: TreeNode?)] = [(mergedRoot, first, second)]

        while let pendingNode = pendingNodes.popLast()
        {
            let leftFirstNode = pendingNode.first?.left
            let leftSecondNode = pendingNode.second?.left

            if let mergedLeftNode = makeMergedNode(leftFirstNode, leftSecondNode)
            {
                pendingNode.merged.left = mergedLeftNode
                pendingNodes.append((mergedLeftNode, leftFirstNode, leftSecondNode))
            }

            let rightFirstNode = pendingNode.first?.right
            let rightSecondNode = pendingNode.second?.right

            if let mergedRightNode = makeMergedNode(rightFirstNode, rightSecondNode)
            {
                pendingNode.merged.right = mergedRightNode
                pendingNodes.append((mergedRightNode, rightFirstNode, rightSecondNode))
            }
        }

        return mergedRoot
    }

    private static func makeMergedNode(_ first: TreeNode?, _ second: TreeNode?) -> TreeNode?
    {
        guard first != nil || second != nil else
        {
            return nil
        }

        return TreeNode((first?.value ?? 0) + (second?.value ?? 0))
    }
}
