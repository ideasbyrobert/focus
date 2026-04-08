public enum MoveZeroes
{
    public static func solve(_ numbers: inout [Int])
    {
        var writeIndex = 0

        for number in numbers
        {
            if number != 0
            {
                numbers[writeIndex] = number
                writeIndex += 1
            }
        }

        while writeIndex < numbers.count
        {
            numbers[writeIndex] = 0
            writeIndex += 1
        }
    }
}
