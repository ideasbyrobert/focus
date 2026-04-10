public enum BitwiseANDOfNumbersRange
{
    public static func solve(_ left: Int, _ right: Int) -> Int
    {
        var left = left
        var right = right
        var shiftCount = 0

        while left < right
        {
            left >>= 1
            right >>= 1
            shiftCount += 1
        }

        return left << shiftCount
    }
}
