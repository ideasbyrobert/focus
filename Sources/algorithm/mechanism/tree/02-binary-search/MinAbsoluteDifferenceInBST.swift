public enum MinAbsoluteDifferenceInBST
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        var previousValue: Int?
        var minimumDifference = Int.max

        traverse(root, previousValue: &previousValue, minimumDifference: &minimumDifference)

        return minimumDifference
    }

    private static func traverse(
        _ node: TreeNode?,
        previousValue: inout Int?,
        minimumDifference: inout Int
    )
    {
        guard let node else
        {
            return
        }

        traverse(node.left, previousValue: &previousValue, minimumDifference: &minimumDifference)

        if let previousValue
        {
            minimumDifference = min(minimumDifference, node.value - previousValue)
        }

        previousValue = node.value

        traverse(node.right, previousValue: &previousValue, minimumDifference: &minimumDifference)
    }
}
