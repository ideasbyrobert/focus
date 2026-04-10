public enum HammingDistance
{
    public static func solve(_ left: Int, _ right: Int) -> Int
    {
        var difference = UInt32(left ^ right)
        var distance = 0

        while difference != 0
        {
            difference &= (difference - 1)
            distance += 1
        }

        return distance
    }
}
