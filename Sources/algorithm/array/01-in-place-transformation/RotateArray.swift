public enum RotateArray
{
    public static func solve(_ numbers: inout [Int], steps: Int)
    {
        guard !numbers.isEmpty else
        {
            return
        }

        let rotation = steps % numbers.count

        if rotation == 0
        {
            return
        }

        reverse(&numbers, from: 0, through: numbers.count - 1)
        reverse(&numbers, from: 0, through: rotation - 1)
        reverse(&numbers, from: rotation, through: numbers.count - 1)
    }

    private static func reverse(_ numbers: inout [Int], from startIndex: Int, through endIndex: Int)
    {
        var leftIndex = startIndex
        var rightIndex = endIndex

        while leftIndex < rightIndex
        {
            numbers.swapAt(leftIndex, rightIndex)
            leftIndex += 1
            rightIndex -= 1
        }
    }
}
