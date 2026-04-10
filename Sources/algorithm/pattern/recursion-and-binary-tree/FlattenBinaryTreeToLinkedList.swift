public enum FlattenBinaryTreeToLinkedList
{
    public static func solve(_ root: TreeNode?)
    {
        _ = flatten(root)
    }

    @discardableResult
    private static func flatten(_ node: TreeNode?) -> TreeNode?
    {
        guard let node else
        {
            return nil
        }

        let leftTail = flatten(node.left)
        let rightTail = flatten(node.right)

        if let left = node.left
        {
            leftTail?.right = node.right
            node.right = left
            node.left = nil
        }

        return rightTail ?? leftTail ?? node
    }
}
