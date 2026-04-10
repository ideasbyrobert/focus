public enum CountCompleteTreeNodes
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        let leftHeight = height(from: root.left, direction: \.left)
        let rightHeight = height(from: root.right, direction: \.right)

        if leftHeight == rightHeight
        {
            return (1 << (leftHeight + 1)) - 1
        }

        return 1 + solve(root.left) + solve(root.right)
    }

    private static func height(from root: TreeNode?, direction: KeyPath<TreeNode, TreeNode?>) -> Int
    {
        var height = 0
        var current = root

        while current != nil
        {
            height += 1
            current = current?[keyPath: direction]
        }

        return height
    }
}
