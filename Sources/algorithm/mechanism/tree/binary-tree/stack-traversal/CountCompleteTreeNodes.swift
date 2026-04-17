public enum CountCompleteTreeNodes
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        var completeNodeCount = 0
        var pendingRoots = [root]

        while let currentRoot = pendingRoots.popLast()
        {
            let leftHeight = height(from: currentRoot.left, direction: \.left)
            let rightHeight = height(from: currentRoot.right, direction: \.right)

            if leftHeight == rightHeight
            {
                completeNodeCount += (1 << (leftHeight + 1)) - 1
                continue
            }

            completeNodeCount += 1

            if let leftChild = currentRoot.left
            {
                pendingRoots.append(leftChild)
            }

            if let rightChild = currentRoot.right
            {
                pendingRoots.append(rightChild)
            }
        }

        return completeNodeCount
    }

    private static func height(from root: TreeNode?, direction: KeyPath<TreeNode, TreeNode?>) -> Int
    {
        var height = 0
        var currentNode = root

        while currentNode != nil
        {
            height += 1
            currentNode = currentNode?[keyPath: direction]
        }

        return height
    }
}
