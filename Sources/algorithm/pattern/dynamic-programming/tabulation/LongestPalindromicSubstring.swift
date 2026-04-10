public enum LongestPalindromicSubstring
{
    public static func solve(_ text: String) -> String
    {
        let characters = Array(text)

        guard !characters.isEmpty else
        {
            return ""
        }

        var isPalindrome = Array(
            repeating: Array(repeating: false, count: characters.count),
            count: characters.count
        )
        var bestStart = 0
        var bestLength = 1

        for currentLength in 1...characters.count
        {
            for startIndex in 0...(characters.count - currentLength)
            {
                let endIndex = startIndex + currentLength - 1

                if characters[startIndex] != characters[endIndex]
                {
                    continue
                }

                if currentLength <= 2 || isPalindrome[startIndex + 1][endIndex - 1]
                {
                    isPalindrome[startIndex][endIndex] = true

                    if currentLength > bestLength
                    {
                        bestStart = startIndex
                        bestLength = currentLength
                    }
                }
            }
        }

        return String(characters[bestStart..<(bestStart + bestLength)])
    }
}
