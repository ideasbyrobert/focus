public enum SearchInABinarySearchTree
{
    public static func solve(_ root: TreeNode?, _ value: Int) -> TreeNode?
    {
        var currentNode = root

        while let node = currentNode
        {
            if node.value == value
            {
                return node
            }

            if value < node.value
            {
                currentNode = node.left
            }
            else
            {
                currentNode = node.right
            }
        }

        return nil
    }
}
