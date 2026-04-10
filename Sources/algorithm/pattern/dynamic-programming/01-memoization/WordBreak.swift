public enum WordBreak
{
    public static func solve(_ text: String, _ dictionary: [String]) -> Bool
    {
        let characters = Array(text)
        let words = Set(dictionary)
        let maximumWordLength = dictionary.map(\.count).max() ?? 0
        var canBreak = Array(repeating: false, count: characters.count + 1)
        canBreak[0] = true

        guard maximumWordLength > 0 else
        {
            return text.isEmpty
        }

        for endIndex in 1...characters.count
        {
            let longestCandidate = min(maximumWordLength, endIndex)

            for length in 1...longestCandidate
            {
                let startIndex = endIndex - length

                if !canBreak[startIndex]
                {
                    continue
                }

                let candidate = String(characters[startIndex..<endIndex])

                if words.contains(candidate)
                {
                    canBreak[endIndex] = true
                    break
                }
            }
        }

        return canBreak[characters.count]
    }
}
