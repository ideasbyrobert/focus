public enum GuessNumberHigherOrLower
{
    public static func solve(_ upperBound: Int, guess: (Int) -> Int) -> Int
    {
        var left = 1
        var right = upperBound

        while left <= right
        {
            let middle = left + ((right - left) / 2)
            let result = guess(middle)

            if result == 0
            {
                return middle
            }

            if result < 0
            {
                right = middle - 1
            }
            else
            {
                left = middle + 1
            }
        }

        return -1
    }
}
