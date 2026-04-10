public enum ContainerWithMostWater
{
    public static func solve(_ heights: [Int]) -> Int
    {
        var left = 0
        var right = heights.count - 1
        var bestArea = 0

        while left < right
        {
            let width = right - left
            let height = min(heights[left], heights[right])
            bestArea = max(bestArea, width * height)

            if heights[left] < heights[right]
            {
                left += 1
            }
            else
            {
                right -= 1
            }
        }

        return bestArea
    }
}
