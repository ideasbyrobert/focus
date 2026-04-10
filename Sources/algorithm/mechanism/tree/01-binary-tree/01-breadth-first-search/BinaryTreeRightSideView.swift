public enum BinaryTreeRightSideView
{
    public static func solve(_ root: TreeNode?) -> [Int]
    {
        guard let root else
        {
            return []
        }

        var queue = [root]
        var index = 0
        var values: [Int] = []

        while index < queue.count
        {
            let levelCount = queue.count - index
            var lastValue = 0

            for _ in 0..<levelCount
            {
                let node = queue[index]
                index += 1
                lastValue = node.value

                if let left = node.left
                {
                    queue.append(left)
                }

                if let right = node.right
                {
                    queue.append(right)
                }
            }

            values.append(lastValue)
        }

        return values
    }
}
