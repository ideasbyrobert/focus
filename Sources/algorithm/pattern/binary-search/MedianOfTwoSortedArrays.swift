public enum MedianOfTwoSortedArrays
{
    public static func solve(_ first: [Int], _ second: [Int]) -> Double
    {
        if first.count > second.count
        {
            return solve(second, first)
        }

        let totalCount = first.count + second.count
        let half = (totalCount + 1) / 2
        var left = 0
        var right = first.count

        while left <= right
        {
            let firstPartition = left + ((right - left) / 2)
            let secondPartition = half - firstPartition

            let firstLeft = firstPartition == 0 ? Int.min : first[firstPartition - 1]
            let firstRight = firstPartition == first.count ? Int.max : first[firstPartition]
            let secondLeft = secondPartition == 0 ? Int.min : second[secondPartition - 1]
            let secondRight = secondPartition == second.count ? Int.max : second[secondPartition]

            if firstLeft <= secondRight && secondLeft <= firstRight
            {
                if totalCount.isMultiple(of: 2)
                {
                    let leftMaximum = max(firstLeft, secondLeft)
                    let rightMinimum = min(firstRight, secondRight)
                    return (Double(leftMaximum) + Double(rightMinimum)) / 2
                }

                return Double(max(firstLeft, secondLeft))
            }

            if firstLeft > secondRight
            {
                right = firstPartition - 1
            }
            else
            {
                left = firstPartition + 1
            }
        }

        return 0
    }
}
