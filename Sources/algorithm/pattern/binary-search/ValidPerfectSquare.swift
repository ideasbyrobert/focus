public enum ValidPerfectSquare
{
    public static func solve(_ number: Int) -> Bool
    {
        guard number >= 0 else
        {
            return false
        }

        var left = 0
        var right = number
        let target = Int64(number)

        while left <= right
        {
            let middle = left + ((right - left) / 2)
            let square = Int64(middle) * Int64(middle)

            if square == target
            {
                return true
            }

            if square < target
            {
                left = middle + 1
            }
            else
            {
                right = middle - 1
            }
        }

        return false
    }
}
