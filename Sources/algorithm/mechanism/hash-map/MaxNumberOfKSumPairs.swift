public enum MaxNumberOfKSumPairs
{
    public static func solve(_ numbers: [Int], target: Int) -> Int
    {
        var counts: [Int: Int] = [:]
        var pairCount = 0

        for number in numbers
        {
            let complement = target - number

            if let count = counts[complement], count > 0
            {
                counts[complement] = count - 1
                pairCount += 1
            }
            else
            {
                counts[number, default: 0] += 1
            }
        }

        return pairCount
    }
}
