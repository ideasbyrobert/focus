public enum KthSmallestElementInBST
{
    public static func solve(_ root: TreeNode?, _ k: Int) -> Int
    {
        var stack: [TreeNode] = []
        var current = root
        var remaining = k

        while current != nil || !stack.isEmpty
        {
            while let node = current
            {
                stack.append(node)
                current = node.left
            }

            let node = stack.removeLast()
            remaining -= 1

            if remaining == 0
            {
                return node.value
            }

            current = node.right
        }

        return 0
    }
}
