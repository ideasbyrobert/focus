public enum MinimumFlipsToMakeAOrBEqualToC
{
    public static func solve(_ a: Int, _ b: Int, _ c: Int) -> Int
    {
        var a = a
        var b = b
        var c = c
        var flipCount = 0

        while a > 0 || b > 0 || c > 0
        {
            let aBit = a & 1
            let bBit = b & 1
            let cBit = c & 1

            if cBit == 0
            {
                flipCount += aBit + bBit
            }
            else if aBit == 0 && bBit == 0
            {
                flipCount += 1
            }

            a >>= 1
            b >>= 1
            c >>= 1
        }

        return flipCount
    }
}
