public enum RepeatedSubstringPattern
{
    public static func solve(_ text: String) -> Bool
    {
        let characters = Array(text)

        if characters.count < 2
        {
            return false
        }

        for patternLength in 1...(characters.count / 2)
        {
            if characters.count % patternLength != 0
            {
                continue
            }

            let pattern = Array(characters.prefix(patternLength))
            var matches = true
            var startIndex = patternLength

            while startIndex < characters.count
            {
                for offset in 0..<patternLength
                {
                    if characters[startIndex + offset] != pattern[offset]
                    {
                        matches = false
                        break
                    }
                }

                if !matches
                {
                    break
                }

                startIndex += patternLength
            }

            if matches
            {
                return true
            }
        }

        return false
    }
}
