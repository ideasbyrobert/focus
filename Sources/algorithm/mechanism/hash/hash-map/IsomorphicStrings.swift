public enum IsomorphicStrings
{
    public static func solve(_ source: String, _ target: String) -> Bool
    {
        let sourceCharacters = Array(source)
        let targetCharacters = Array(target)

        guard sourceCharacters.count == targetCharacters.count else
        {
            return false
        }

        var sourceToTarget: [Character: Character] = [:]
        var targetToSource: [Character: Character] = [:]

        for index in sourceCharacters.indices
        {
            let sourceCharacter = sourceCharacters[index]
            let targetCharacter = targetCharacters[index]

            if let mappedCharacter = sourceToTarget[sourceCharacter], mappedCharacter != targetCharacter
            {
                return false
            }

            if let mappedCharacter = targetToSource[targetCharacter], mappedCharacter != sourceCharacter
            {
                return false
            }

            sourceToTarget[sourceCharacter] = targetCharacter
            targetToSource[targetCharacter] = sourceCharacter
        }

        return true
    }
}
