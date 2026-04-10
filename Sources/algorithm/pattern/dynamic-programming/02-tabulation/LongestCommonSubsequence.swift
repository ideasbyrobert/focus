public enum LongestCommonSubsequence
{
    public static func solve(_ first: String, _ second: String) -> Int
    {
        let firstCharacters = Array(first)
        let secondCharacters = Array(second)
        var lengths = Array(
            repeating: Array(repeating: 0, count: secondCharacters.count + 1),
            count: firstCharacters.count + 1
        )

        for firstIndex in 1..<(firstCharacters.count + 1)
        {
            for secondIndex in 1..<(secondCharacters.count + 1)
            {
                if firstCharacters[firstIndex - 1] == secondCharacters[secondIndex - 1]
                {
                    lengths[firstIndex][secondIndex] = lengths[firstIndex - 1][secondIndex - 1] + 1
                }
                else
                {
                    lengths[firstIndex][secondIndex] = max(
                        lengths[firstIndex - 1][secondIndex],
                        lengths[firstIndex][secondIndex - 1]
                    )
                }
            }
        }

        return lengths[firstCharacters.count][secondCharacters.count]
    }
}
