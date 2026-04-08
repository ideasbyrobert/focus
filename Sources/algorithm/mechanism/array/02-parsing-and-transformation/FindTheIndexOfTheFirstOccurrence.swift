public enum FindTheIndexOfTheFirstOccurrence
{
    public static func solve(in haystack: String, finding needle: String) -> Int
    {
        if needle.isEmpty
        {
            return 0
        }

        let haystackCharacters = Array(haystack)
        let needleCharacters = Array(needle)

        if needleCharacters.count > haystackCharacters.count
        {
            return -1
        }

        let lastStartIndex = haystackCharacters.count - needleCharacters.count

        for startIndex in 0...lastStartIndex
        {
            var matches = true

            for offset in 0..<needleCharacters.count
            {
                if haystackCharacters[startIndex + offset] != needleCharacters[offset]
                {
                    matches = false
                    break
                }
            }

            if matches
            {
                return startIndex
            }
        }

        return -1
    }
}
