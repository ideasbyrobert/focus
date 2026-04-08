public enum MergeStringsAlternately
{
    public static func solve(_ first: String, _ second: String) -> String
    {
        let firstCharacters = Array(first)
        let secondCharacters = Array(second)
        let longestCount = max(firstCharacters.count, secondCharacters.count)
        var merged: [Character] = []

        merged.reserveCapacity(firstCharacters.count + secondCharacters.count)

        for index in 0..<longestCount
        {
            if index < firstCharacters.count
            {
                merged.append(firstCharacters[index])
            }

            if index < secondCharacters.count
            {
                merged.append(secondCharacters[index])
            }
        }

        return String(merged)
    }
}
