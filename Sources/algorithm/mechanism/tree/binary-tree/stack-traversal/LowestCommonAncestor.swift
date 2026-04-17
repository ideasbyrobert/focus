public enum LowestCommonAncestor
{
    public static func solve(_ root: TreeNode?, _ first: TreeNode?, _ second: TreeNode?) -> TreeNode?
    {
        guard let root else
        {
            return nil
        }

        var parentByNodeIdentifier: [ObjectIdentifier: TreeNode] = [:]
        var pendingNodes = [root]
        var foundFirst = first == nil || root === first
        var foundSecond = second == nil || root === second

        while let currentNode = pendingNodes.popLast(), !(foundFirst && foundSecond)
        {
            if let leftChild = currentNode.left
            {
                parentByNodeIdentifier[ObjectIdentifier(leftChild)] = currentNode
                pendingNodes.append(leftChild)
                foundFirst = foundFirst || leftChild === first
                foundSecond = foundSecond || leftChild === second
            }

            if let rightChild = currentNode.right
            {
                parentByNodeIdentifier[ObjectIdentifier(rightChild)] = currentNode
                pendingNodes.append(rightChild)
                foundFirst = foundFirst || rightChild === first
                foundSecond = foundSecond || rightChild === second
            }
        }

        guard foundFirst, foundSecond else
        {
            return nil
        }

        if first == nil
        {
            return second
        }

        if second == nil
        {
            return first
        }

        var ancestorIdentifiers = Set<ObjectIdentifier>()
        var currentFirstNode = first

        while let node = currentFirstNode
        {
            ancestorIdentifiers.insert(ObjectIdentifier(node))
            currentFirstNode = parentByNodeIdentifier[ObjectIdentifier(node)]
        }

        var currentSecondNode = second

        while let node = currentSecondNode
        {
            if ancestorIdentifiers.contains(ObjectIdentifier(node))
            {
                return node
            }

            currentSecondNode = parentByNodeIdentifier[ObjectIdentifier(node)]
        }

        return nil
    }
}
