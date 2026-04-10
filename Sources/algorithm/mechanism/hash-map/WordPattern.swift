public enum WordPattern
{
    public static func solve(_ pattern: String, _ sentence: String) -> Bool
    {
        let patternCharacters = Array(pattern)
        let words = sentence.split(separator: " ").map(String.init)

        guard patternCharacters.count == words.count else
        {
            return false
        }

        var patternToWord: [Character: String] = [:]
        var wordToPattern: [String: Character] = [:]

        for index in patternCharacters.indices
        {
            let patternCharacter = patternCharacters[index]
            let word = words[index]

            if let mappedWord = patternToWord[patternCharacter], mappedWord != word
            {
                return false
            }

            if let mappedPattern = wordToPattern[word], mappedPattern != patternCharacter
            {
                return false
            }

            patternToWord[patternCharacter] = word
            wordToPattern[word] = patternCharacter
        }

        return true
    }
}
