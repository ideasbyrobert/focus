public enum LongestZigZagPathInBinaryTree
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        var bestLength = 0
        _ = explore(root, bestLength: &bestLength)
        return bestLength
    }

    private static func explore(_ node: TreeNode?, bestLength: inout Int) -> (leftFirst: Int, rightFirst: Int)
    {
        guard let node else
        {
            return (-1, -1)
        }

        let left = explore(node.left, bestLength: &bestLength)
        let right = explore(node.right, bestLength: &bestLength)

        let leftFirst = left.rightFirst + 1
        let rightFirst = right.leftFirst + 1

        bestLength = max(bestLength, max(leftFirst, rightFirst))

        return (leftFirst, rightFirst)
    }
}
