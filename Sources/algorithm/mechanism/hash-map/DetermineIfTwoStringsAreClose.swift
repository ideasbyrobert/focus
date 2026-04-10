public enum DetermineIfTwoStringsAreClose
{
    public static func solve(_ left: String, _ right: String) -> Bool
    {
        guard left.count == right.count else
        {
            return false
        }

        let leftCounts = frequencies(in: left)
        let rightCounts = frequencies(in: right)

        guard Set(leftCounts.keys) == Set(rightCounts.keys) else
        {
            return false
        }

        return leftCounts.values.sorted() == rightCounts.values.sorted()
    }

    private static func frequencies(in text: String) -> [Character: Int]
    {
        var counts: [Character: Int] = [:]

        for character in text
        {
            counts[character, default: 0] += 1
        }

        return counts
    }
}
