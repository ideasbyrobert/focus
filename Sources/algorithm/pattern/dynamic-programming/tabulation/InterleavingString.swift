public enum InterleavingString
{
    public static func solve(_ first: String, _ second: String, _ third: String) -> Bool
    {
        let firstCharacters = Array(first)
        let secondCharacters = Array(second)
        let thirdCharacters = Array(third)

        guard firstCharacters.count + secondCharacters.count == thirdCharacters.count else
        {
            return false
        }

        var canBuild = Array(repeating: false, count: secondCharacters.count + 1)
        canBuild[0] = true

        for secondIndex in 1..<(secondCharacters.count + 1)
        {
            canBuild[secondIndex] = canBuild[secondIndex - 1]
                && secondCharacters[secondIndex - 1] == thirdCharacters[secondIndex - 1]
        }

        for firstIndex in 1..<(firstCharacters.count + 1)
        {
            canBuild[0] = canBuild[0] && firstCharacters[firstIndex - 1] == thirdCharacters[firstIndex - 1]

            for secondIndex in 1..<(secondCharacters.count + 1)
            {
                let thirdIndex = firstIndex + secondIndex - 1
                let matchesFirst = canBuild[secondIndex]
                    && firstCharacters[firstIndex - 1] == thirdCharacters[thirdIndex]
                let matchesSecond = canBuild[secondIndex - 1]
                    && secondCharacters[secondIndex - 1] == thirdCharacters[thirdIndex]
                canBuild[secondIndex] = matchesFirst || matchesSecond
            }
        }

        return canBuild[secondCharacters.count]
    }
}
