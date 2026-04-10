public enum MaxNumberOfVowelsInSubstringOfGivenLength
{
    public static func solve(_ text: String, _ windowSize: Int) -> Int
    {
        let characters = Array(text)

        guard !characters.isEmpty, windowSize > 0, windowSize <= characters.count else
        {
            return 0
        }

        var currentVowelCount = 0

        for index in 0..<windowSize
        {
            if isVowel(characters[index])
            {
                currentVowelCount += 1
            }
        }

        var maximumVowelCount = currentVowelCount

        for right in windowSize..<characters.count
        {
            if isVowel(characters[right])
            {
                currentVowelCount += 1
            }

            if isVowel(characters[right - windowSize])
            {
                currentVowelCount -= 1
            }

            maximumVowelCount = max(maximumVowelCount, currentVowelCount)
        }

        return maximumVowelCount
    }

    private static func isVowel(_ character: Character) -> Bool
    {
        switch character
        {
        case "a", "e", "i", "o", "u":
            return true
        default:
            return false
        }
    }
}
