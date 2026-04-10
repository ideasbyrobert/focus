public enum MinimumWindowSubstring
{
    public static func solve(_ text: String, _ target: String) -> String
    {
        let textCharacters = Array(text)
        let targetCharacters = Array(target)

        guard !textCharacters.isEmpty, !targetCharacters.isEmpty, targetCharacters.count <= textCharacters.count else
        {
            return ""
        }

        var requiredCounts: [Character: Int] = [:]

        for character in targetCharacters
        {
            requiredCounts[character, default: 0] += 1
        }

        var windowCounts: [Character: Int] = [:]
        var satisfiedCharacterKinds = 0
        var left = 0
        var bestStart = 0
        var bestLength = Int.max

        for right in 0..<textCharacters.count
        {
            let rightCharacter = textCharacters[right]
            windowCounts[rightCharacter, default: 0] += 1

            if let requiredCount = requiredCounts[rightCharacter], windowCounts[rightCharacter] == requiredCount
            {
                satisfiedCharacterKinds += 1
            }

            while satisfiedCharacterKinds == requiredCounts.count
            {
                if right - left + 1 < bestLength
                {
                    bestLength = right - left + 1
                    bestStart = left
                }

                let leftCharacter = textCharacters[left]

                if let requiredCount = requiredCounts[leftCharacter], windowCounts[leftCharacter] == requiredCount
                {
                    satisfiedCharacterKinds -= 1
                }

                windowCounts[leftCharacter, default: 0] -= 1
                left += 1
            }
        }

        guard bestLength != Int.max else
        {
            return ""
        }

        return String(textCharacters[bestStart..<(bestStart + bestLength)])
    }
}
