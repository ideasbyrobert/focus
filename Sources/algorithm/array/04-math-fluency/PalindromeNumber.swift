public enum PalindromeNumber
{
    public static func solve(_ number: Int) -> Bool
    {
        if number < 0 || (number % 10 == 0 && number != 0)
        {
            return false
        }

        var remaining = number
        var reversedHalf = 0

        while remaining > reversedHalf
        {
            reversedHalf = reversedHalf * 10 + remaining % 10
            remaining /= 10
        }

        return remaining == reversedHalf || remaining == reversedHalf / 10
    }
}
