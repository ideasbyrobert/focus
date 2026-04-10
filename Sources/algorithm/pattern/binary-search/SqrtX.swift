public enum SqrtX
{
    public static func solve(_ number: Int) -> Int
    {
        guard number > 1 else
        {
            return number
        }

        var left = 1
        var right = number
        var answer = 0
        let target = Int64(number)

        while left <= right
        {
            let middle = left + ((right - left) / 2)
            let square = Int64(middle) * Int64(middle)

            if square == target
            {
                return middle
            }

            if square < target
            {
                answer = middle
                left = middle + 1
            }
            else
            {
                right = middle - 1
            }
        }

        return answer
    }
}
