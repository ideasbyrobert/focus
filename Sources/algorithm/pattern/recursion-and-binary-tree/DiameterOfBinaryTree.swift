public enum DiameterOfBinaryTree
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        var maximumDiameter = 0
        _ = depth(root, maximumDiameter: &maximumDiameter)
        return maximumDiameter
    }

    private static func depth(_ node: TreeNode?, maximumDiameter: inout Int) -> Int
    {
        guard let node else
        {
            return 0
        }

        let leftDepth = depth(node.left, maximumDiameter: &maximumDiameter)
        let rightDepth = depth(node.right, maximumDiameter: &maximumDiameter)

        maximumDiameter = max(maximumDiameter, leftDepth + rightDepth)

        return 1 + max(leftDepth, rightDepth)
    }
}
