public enum IsSubsequence
{
    public static func solve(_ subsequence: String, in text: String) -> Bool
    {
        let subsequenceCharacters = Array(subsequence)
        let textCharacters = Array(text)
        var subsequenceIndex = 0
        var textIndex = 0

        while subsequenceIndex < subsequenceCharacters.count && textIndex < textCharacters.count
        {
            if subsequenceCharacters[subsequenceIndex] == textCharacters[textIndex]
            {
                subsequenceIndex += 1
            }

            textIndex += 1
        }

        return subsequenceIndex == subsequenceCharacters.count
    }
}
