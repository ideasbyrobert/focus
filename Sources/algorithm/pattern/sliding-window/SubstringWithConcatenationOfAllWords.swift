public enum SubstringWithConcatenationOfAllWords
{
    public static func solve(_ text: String, _ words: [String]) -> [Int]
    {
        guard !text.isEmpty, !words.isEmpty else
        {
            return []
        }

        let wordLength = words[0].count
        let wordCount = words.count
        let totalWindowLength = wordLength * wordCount

        guard wordLength > 0, text.count >= totalWindowLength else
        {
            return []
        }

        let characters = Array(text)
        let requiredCounts = wordCounts(for: words)
        var result: [Int] = []

        for offset in 0..<wordLength
        {
            var left = offset
            var right = offset
            var matchedWordCount = 0
            var windowCounts: [String: Int] = [:]

            while right + wordLength <= characters.count
            {
                let word = String(characters[right..<(right + wordLength)])
                right += wordLength

                guard let allowedCount = requiredCounts[word] else
                {
                    left = right
                    matchedWordCount = 0
                    windowCounts.removeAll()
                    continue
                }

                windowCounts[word, default: 0] += 1
                matchedWordCount += 1

                while windowCounts[word, default: 0] > allowedCount
                {
                    let leftWord = String(characters[left..<(left + wordLength)])
                    windowCounts[leftWord, default: 0] -= 1
                    matchedWordCount -= 1
                    left += wordLength
                }

                if matchedWordCount == wordCount
                {
                    result.append(left)

                    let leftWord = String(characters[left..<(left + wordLength)])
                    windowCounts[leftWord, default: 0] -= 1
                    matchedWordCount -= 1
                    left += wordLength
                }
            }
        }

        return result
    }

    private static func wordCounts(for words: [String]) -> [String: Int]
    {
        var counts: [String: Int] = [:]

        for word in words
        {
            counts[word, default: 0] += 1
        }

        return counts
    }
}
