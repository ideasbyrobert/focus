public enum MergeSortedArray
{
    public static func solve(
        _ destination: inout [Int],
        validCount destinationCount: Int,
        merging source: [Int],
        validCount sourceCount: Int
    )
    {
        if sourceCount == 0
        {
            return
        }

        var insertIndex = destinationCount + sourceCount - 1
        var leftIndex = destinationCount - 1
        var rightIndex = sourceCount - 1

        while rightIndex >= 0
        {
            if leftIndex >= 0 && destination[leftIndex] > source[rightIndex]
            {
                destination[insertIndex] = destination[leftIndex]
                leftIndex -= 1
            }
            else
            {
                destination[insertIndex] = source[rightIndex]
                rightIndex -= 1
            }

            insertIndex -= 1
        }
    }
}
