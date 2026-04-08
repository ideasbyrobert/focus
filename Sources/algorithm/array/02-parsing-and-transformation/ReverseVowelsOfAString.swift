public enum ReverseVowelsOfAString
{
    public static func solve(_ text: String) -> String
    {
        var characters = Array(text)

        if characters.count < 2
        {
            return text
        }

        var leftIndex = 0
        var rightIndex = characters.count - 1

        while leftIndex < rightIndex
        {
            while leftIndex < rightIndex && !isVowel(characters[leftIndex])
            {
                leftIndex += 1
            }

            while leftIndex < rightIndex && !isVowel(characters[rightIndex])
            {
                rightIndex -= 1
            }

            if leftIndex < rightIndex
            {
                characters.swapAt(leftIndex, rightIndex)
                leftIndex += 1
                rightIndex -= 1
            }
        }

        return String(characters)
    }

    private static func isVowel(_ character: Character) -> Bool
    {
        switch character
        {
        case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U":
            return true
        default:
            return false
        }
    }
}
