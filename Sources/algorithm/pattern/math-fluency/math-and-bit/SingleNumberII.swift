public enum SingleNumberII
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        var result: UInt32 = 0

        for bitIndex in 0..<32
        {
            var bitCount = 0

            for number in numbers
            {
                let value = UInt32(bitPattern: Int32(number))
                bitCount += Int((value >> bitIndex) & 1)
            }

            if bitCount % 3 != 0
            {
                result |= (1 << bitIndex)
            }
        }

        return Int(Int32(bitPattern: result))
    }
}
