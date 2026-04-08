public enum LongestCommonPrefix
{
    public static func solve(_ words: [String]) -> String
    {
        guard !words.isEmpty else
        {
            return ""
        }

        let characterArrays = words.map(Array.init)
        let shortestCount = characterArrays.map(\.count).min() ?? 0
        var prefix: [Character] = []

        for index in 0..<shortestCount
        {
            let candidate = characterArrays[0][index]

            for characters in characterArrays.dropFirst()
            {
                if characters[index] != candidate
                {
                    return String(prefix)
                }
            }

            prefix.append(candidate)
        }

        return String(prefix)
    }
}
