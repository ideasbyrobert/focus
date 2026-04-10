public enum NumberOf1Bits
{
    public static func solve(_ value: UInt32) -> Int
    {
        var value = value
        var bitCount = 0

        while value != 0
        {
            value &= (value - 1)
            bitCount += 1
        }

        return bitCount
    }
}
