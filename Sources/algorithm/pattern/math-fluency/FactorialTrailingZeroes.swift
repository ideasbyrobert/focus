public enum FactorialTrailingZeroes
{
    public static func solve(_ n: Int) -> Int
    {
        var count = 0
        var divisor = 5

        while divisor <= n
        {
            count += n / divisor

            if divisor > Int.max / 5
            {
                break
            }

            divisor *= 5
        }

        return count
    }
}
