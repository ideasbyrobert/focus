public enum ZigzagLevelOrderTraversal
{
    public static func solve(_ root: TreeNode?) -> [[Int]]
    {
        guard let root else
        {
            return []
        }

        var queue = [root]
        var index = 0
        var leftToRight = true
        var levels: [[Int]] = []

        while index < queue.count
        {
            let levelCount = queue.count - index
            var values: [Int] = []

            for _ in 0..<levelCount
            {
                let node = queue[index]
                index += 1
                values.append(node.value)

                if let left = node.left
                {
                    queue.append(left)
                }

                if let right = node.right
                {
                    queue.append(right)
                }
            }

            if !leftToRight
            {
                values.reverse()
            }

            levels.append(values)
            leftToRight.toggle()
        }

        return levels
    }
}
