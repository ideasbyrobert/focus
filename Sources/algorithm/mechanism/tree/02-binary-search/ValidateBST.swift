public enum ValidateBST
{
    public static func solve(_ root: TreeNode?) -> Bool
    {
        isValid(root, lowerBound: nil, upperBound: nil)
    }

    private static func isValid(_ node: TreeNode?, lowerBound: Int?, upperBound: Int?) -> Bool
    {
        guard let node else
        {
            return true
        }

        if let lowerBound, node.value <= lowerBound
        {
            return false
        }

        if let upperBound, node.value >= upperBound
        {
            return false
        }

        return isValid(node.left, lowerBound: lowerBound, upperBound: node.value)
            && isValid(node.right, lowerBound: node.value, upperBound: upperBound)
    }
}
