public enum ReverseBits
{
    public static func solve(_ value: UInt32) -> UInt32
    {
        var value = value
        var reversed: UInt32 = 0

        for _ in 0..<32
        {
            reversed <<= 1
            reversed |= (value & 1)
            value >>= 1
        }

        return reversed
    }
}
