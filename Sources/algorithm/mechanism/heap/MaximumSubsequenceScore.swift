public enum MaximumSubsequenceScore
{
    public static func solve(_ numbers1: [Int], _ numbers2: [Int], subsequenceLength: Int) -> Int64
    {
        let pairs = zip(numbers1, numbers2).sorted
        {
            left, right in

            if left.1 != right.1
            {
                return left.1 > right.1
            }

            return left.0 > right.0
        }

        var selectedNumbers = Heap<Int>(sort: <)
        var runningSum: Int64 = 0
        var bestScore: Int64 = 0

        for pair in pairs
        {
            selectedNumbers.insert(pair.0)
            runningSum += Int64(pair.0)

            if selectedNumbers.count > subsequenceLength
            {
                runningSum -= Int64(selectedNumbers.remove()!)
            }

            if selectedNumbers.count == subsequenceLength
            {
                bestScore = max(bestScore, runningSum * Int64(pair.1))
            }
        }

        return bestScore
    }
}
