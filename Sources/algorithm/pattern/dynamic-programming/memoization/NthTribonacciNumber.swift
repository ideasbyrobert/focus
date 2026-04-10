public enum NthTribonacciNumber
{
    public static func solve(_ number: Int) -> Int
    {
        guard number > 2 else
        {
            return number == 0 ? 0 : 1
        }

        var first = 0
        var second = 1
        var third = 1

        for _ in 3...number
        {
            let next = first + second + third
            first = second
            second = third
            third = next
        }

        return third
    }
}
