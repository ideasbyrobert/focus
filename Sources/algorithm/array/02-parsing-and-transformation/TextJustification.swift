public enum TextJustification
{
    public static func solve(_ words: [String], lineWidth: Int) -> [String]
    {
        var justifiedLines: [String] = []
        var currentIndex = 0

        while currentIndex < words.count
        {
            let lineStartIndex = currentIndex
            var currentLineLength = words[currentIndex].count
            currentIndex += 1

            while currentIndex < words.count
            {
                let nextLength = currentLineLength + 1 + words[currentIndex].count

                if nextLength > lineWidth
                {
                    break
                }

                currentLineLength = nextLength
                currentIndex += 1
            }

            let lineWords = Array(words[lineStartIndex..<currentIndex])
            let isLastLine = currentIndex == words.count

            if isLastLine || lineWords.count == 1
            {
                justifiedLines.append(leftJustifiedLine(from: lineWords, lineWidth: lineWidth))
            }
            else
            {
                justifiedLines.append(fullyJustifiedLine(from: lineWords, lineWidth: lineWidth))
            }
        }

        return justifiedLines
    }

    private static func leftJustifiedLine(from words: [String], lineWidth: Int) -> String
    {
        let line = words.joined(separator: " ")

        return line + String(repeating: " ", count: lineWidth - line.count)
    }

    private static func fullyJustifiedLine(from words: [String], lineWidth: Int) -> String
    {
        let lettersCount = words.reduce(0)
        {
            $0 + $1.count
        }

        let gapCount = words.count - 1
        let spacesToDistribute = lineWidth - lettersCount
        let baseSpaces = spacesToDistribute / gapCount
        let extraSpaces = spacesToDistribute % gapCount
        var line = ""

        for index in words.indices
        {
            line += words[index]

            if index < gapCount
            {
                let spaces = baseSpaces + (index < extraSpaces ? 1 : 0)
                line += String(repeating: " ", count: spaces)
            }
        }

        return line
    }
}
