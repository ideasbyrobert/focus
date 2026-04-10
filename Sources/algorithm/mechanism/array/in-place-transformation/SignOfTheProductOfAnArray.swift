public enum SignOfTheProductOfAnArray
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        var negativeCount = 0

        for number in numbers
        {
            if number == 0
            {
                return 0
            }

            if number < 0
            {
                negativeCount += 1
            }
        }

        return negativeCount.isMultiple(of: 2) ? 1 : -1
    }
}
