public enum AverageOfLevels
{
    public static func solve(_ root: TreeNode?) -> [Double]
    {
        guard let root else
        {
            return []
        }

        var queue = [root]
        var index = 0
        var averages: [Double] = []

        while index < queue.count
        {
            let levelCount = queue.count - index
            var levelTotal = 0

            for _ in 0..<levelCount
            {
                let node = queue[index]
                index += 1
                levelTotal += node.value

                if let left = node.left
                {
                    queue.append(left)
                }

                if let right = node.right
                {
                    queue.append(right)
                }
            }

            averages.append(Double(levelTotal) / Double(levelCount))
        }

        return averages
    }
}
