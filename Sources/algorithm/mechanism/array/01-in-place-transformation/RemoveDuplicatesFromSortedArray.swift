public enum RemoveDuplicatesFromSortedArray
{
    public static func solve(_ numbers: inout [Int]) -> Int
    {
        guard !numbers.isEmpty else
        {
            return 0
        }

        var writeIndex = 1

        for readIndex in 1..<numbers.count
        {
            if numbers[readIndex] != numbers[writeIndex - 1]
            {
                numbers[writeIndex] = numbers[readIndex]
                writeIndex += 1
            }
        }

        return writeIndex
    }
}
