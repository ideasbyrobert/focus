public enum StringCompression
{
    public static func solve(_ characters: inout [Character]) -> Int
    {
        guard !characters.isEmpty else
        {
            return 0
        }

        var readIndex = 0
        var writeIndex = 0

        while readIndex < characters.count
        {
            let currentCharacter = characters[readIndex]
            var runLength = 0

            while readIndex < characters.count && characters[readIndex] == currentCharacter
            {
                readIndex += 1
                runLength += 1
            }

            characters[writeIndex] = currentCharacter
            writeIndex += 1

            if runLength > 1
            {
                for digit in String(runLength)
                {
                    characters[writeIndex] = digit
                    writeIndex += 1
                }
            }
        }

        if writeIndex < characters.count
        {
            characters.removeLast(characters.count - writeIndex)
        }

        return writeIndex
    }
}
