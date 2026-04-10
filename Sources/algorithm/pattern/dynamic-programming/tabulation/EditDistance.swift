public enum EditDistance
{
    public static func solve(_ first: String, _ second: String) -> Int
    {
        let firstCharacters = Array(first)
        let secondCharacters = Array(second)
        var previousRow = Array(0...secondCharacters.count)

        for firstIndex in 1..<(firstCharacters.count + 1)
        {
            var currentRow = Array(repeating: 0, count: secondCharacters.count + 1)
            currentRow[0] = firstIndex

            for secondIndex in 1..<(secondCharacters.count + 1)
            {
                if firstCharacters[firstIndex - 1] == secondCharacters[secondIndex - 1]
                {
                    currentRow[secondIndex] = previousRow[secondIndex - 1]
                }
                else
                {
                    currentRow[secondIndex] = min(
                        previousRow[secondIndex],
                        currentRow[secondIndex - 1],
                        previousRow[secondIndex - 1]
                    ) + 1
                }
            }

            previousRow = currentRow
        }

        return previousRow[secondCharacters.count]
    }
}
