public enum SymmetricTree
{
    public static func solve(_ root: TreeNode?) -> Bool
    {
        var pendingNodePairs: [(TreeNode?, TreeNode?)] = [(root?.left, root?.right)]

        while let pendingNodePair = pendingNodePairs.popLast()
        {
            switch pendingNodePair
            {
            case (nil, nil):
                continue
            case let (leftNode?, rightNode?):
                guard leftNode.value == rightNode.value else
                {
                    return false
                }

                pendingNodePairs.append((leftNode.left, rightNode.right))
                pendingNodePairs.append((leftNode.right, rightNode.left))
            default:
                return false
            }
        }

        return true
    }
}
