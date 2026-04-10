public enum UniqueNumberOfOccurrences
{
    public static func solve(_ numbers: [Int]) -> Bool
    {
        var frequencies: [Int: Int] = [:]

        for number in numbers
        {
            frequencies[number, default: 0] += 1
        }

        return Set(frequencies.values).count == frequencies.count
    }
}
