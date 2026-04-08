public enum RemoveElement
{
    public static func solve(_ numbers: inout [Int], removing value: Int) -> Int
    {
        var writeIndex = 0

        for readIndex in numbers.indices
        {
            if numbers[readIndex] != value
            {
                numbers[writeIndex] = numbers[readIndex]
                writeIndex += 1
            }
        }

        return writeIndex
    }
}
