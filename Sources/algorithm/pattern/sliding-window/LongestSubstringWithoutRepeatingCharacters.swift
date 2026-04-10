public enum LongestSubstringWithoutRepeatingCharacters
{
    public static func solve(_ text: String) -> Int
    {
        let characters = Array(text)
        var lastSeenIndexByCharacter: [Character: Int] = [:]
        var left = 0
        var maximumWindowLength = 0

        for right in 0..<characters.count
        {
            let character = characters[right]

            if let previousIndex = lastSeenIndexByCharacter[character], previousIndex >= left
            {
                left = previousIndex + 1
            }

            lastSeenIndexByCharacter[character] = right
            maximumWindowLength = max(maximumWindowLength, right - left + 1)
        }

        return maximumWindowLength
    }
}
