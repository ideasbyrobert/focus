public enum TrappingRainWater
{
    public static func solve(_ heights: [Int]) -> Int
    {
        var stack: [Int] = []
        var trappedWater = 0

        for index in heights.indices
        {
            while let bottomIndex = stack.last, heights[index] > heights[bottomIndex]
            {
                _ = stack.popLast()

                guard let leftIndex = stack.last else
                {
                    break
                }

                let width = index - leftIndex - 1
                let boundedHeight = min(heights[leftIndex], heights[index]) - heights[bottomIndex]
                trappedWater += width * boundedHeight
            }

            stack.append(index)
        }

        return trappedWater
    }
}
