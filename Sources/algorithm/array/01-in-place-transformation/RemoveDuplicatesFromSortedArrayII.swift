public enum RemoveDuplicatesFromSortedArrayII
{
    public static func solve(_ numbers: inout [Int]) -> Int
    {
        if numbers.count <= 2
        {
            return numbers.count
        }

        var writeIndex = 2

        for readIndex in 2..<numbers.count
        {
            if numbers[readIndex] != numbers[writeIndex - 2]
            {
                numbers[writeIndex] = numbers[readIndex]
                writeIndex += 1
            }
        }

        return writeIndex
    }
}
