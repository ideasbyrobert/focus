public enum TrappingRainWater
{
    public static func solve(_ heights: [Int]) -> Int
    {
        guard heights.count > 2 else
        {
            return 0
        }

        var leftMaximums = Array(repeating: 0, count: heights.count)
        var rightMaximums = Array(repeating: 0, count: heights.count)

        leftMaximums[0] = heights[0]

        for index in 1..<heights.count
        {
            leftMaximums[index] = max(leftMaximums[index - 1], heights[index])
        }

        rightMaximums[heights.count - 1] = heights[heights.count - 1]

        for index in stride(from: heights.count - 2, through: 0, by: -1)
        {
            rightMaximums[index] = max(rightMaximums[index + 1], heights[index])
        }

        var trappedWater = 0

        for index in heights.indices
        {
            trappedWater += min(leftMaximums[index], rightMaximums[index]) - heights[index]
        }

        return trappedWater
    }
}
