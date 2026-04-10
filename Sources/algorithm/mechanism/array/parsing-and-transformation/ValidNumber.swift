public enum ValidNumber
{
    public static func solve(_ text: String) -> Bool
    {
        let characters = Array(text)
        var startIndex = 0
        var endIndex = characters.count

        while startIndex < endIndex && characters[startIndex].isWhitespace
        {
            startIndex += 1
        }

        while endIndex > startIndex && characters[endIndex - 1].isWhitespace
        {
            endIndex -= 1
        }

        if startIndex == endIndex
        {
            return false
        }

        var hasDigit = false
        var hasExponent = false
        var hasDecimalPoint = false
        var needsDigitAfterExponent = false

        for index in startIndex..<endIndex
        {
            let character = characters[index]

            if character.wholeNumberValue != nil
            {
                hasDigit = true

                if hasExponent
                {
                    needsDigitAfterExponent = false
                }
            }
            else if character == "+" || character == "-"
            {
                if index != startIndex
                {
                    let previousCharacter = characters[index - 1]

                    if previousCharacter != "e" && previousCharacter != "E"
                    {
                        return false
                    }
                }
            }
            else if character == "."
            {
                if hasDecimalPoint || hasExponent
                {
                    return false
                }

                hasDecimalPoint = true
            }
            else if character == "e" || character == "E"
            {
                if hasExponent || !hasDigit
                {
                    return false
                }

                hasExponent = true
                needsDigitAfterExponent = true
            }
            else
            {
                return false
            }
        }

        return hasDigit && !needsDigitAfterExponent
    }
}
