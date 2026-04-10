public enum CountingBits
{
    public static func solve(_ count: Int) -> [Int]
    {
        guard count >= 0 else
        {
            return []
        }

        var bitCounts = Array(repeating: 0, count: count + 1)

        if count == 0
        {
            return bitCounts
        }

        for value in 1...count
        {
            bitCounts[value] = bitCounts[value >> 1] + (value & 1)
        }

        return bitCounts
    }
}
