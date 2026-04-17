public enum SameTree
{
    public static func solve(_ first: TreeNode?, _ second: TreeNode?) -> Bool
    {
        var pendingNodePairs: [(TreeNode?, TreeNode?)] = [(first, second)]

        while let pendingNodePair = pendingNodePairs.popLast()
        {
            switch pendingNodePair
            {
            case (nil, nil):
                continue
            case let (firstNode?, secondNode?):
                guard firstNode.value == secondNode.value else
                {
                    return false
                }

                pendingNodePairs.append((firstNode.left, secondNode.left))
                pendingNodePairs.append((firstNode.right, secondNode.right))
            default:
                return false
            }
        }

        return true
    }
}
