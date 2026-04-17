public enum MaximumLevelSumOfBinaryTree
{
    public static func solve(_ root: TreeNode?) -> Int
    {
        guard let root else
        {
            return 0
        }

        var queue = [root]
        var index = 0
        var currentLevel = 1
        var bestLevel = 1
        var bestSum = Int.min

        while index < queue.count
        {
            let levelCount = queue.count - index
            var levelSum = 0

            for _ in 0..<levelCount
            {
                let node = queue[index]
                index += 1
                levelSum += node.value

                if let left = node.left
                {
                    queue.append(left)
                }

                if let right = node.right
                {
                    queue.append(right)
                }
            }

            if levelSum > bestSum
            {
                bestSum = levelSum
                bestLevel = currentLevel
            }

            currentLevel += 1
        }

        return bestLevel
    }
}
