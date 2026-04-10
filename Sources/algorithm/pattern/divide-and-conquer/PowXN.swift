public enum PowXN
{
    public static func solve(_ base: Double, _ exponent: Int) -> Double
    {
        let magnitude = UInt64(exponent.magnitude)

        if exponent < 0
        {
            return 1 / power(base, exponent: magnitude)
        }

        return power(base, exponent: magnitude)
    }

    private static func power(_ base: Double, exponent: UInt64) -> Double
    {
        if exponent == 0
        {
            return 1
        }

        if exponent == 1
        {
            return base
        }

        let half = power(base, exponent: exponent / 2)

        if exponent.isMultiple(of: 2)
        {
            return half * half
        }

        return half * half * base
    }
}
