public enum FindTheDifference
{
    public static func solve(_ original: String, _ extended: String) -> Character
    {
        var counts: [Character: Int] = [:]

        for character in original
        {
            counts[character, default: 0] += 1
        }

        for character in extended
        {
            let count = counts[character, default: 0]

            if count == 0
            {
                return character
            }

            counts[character] = count - 1
        }

        fatalError("Expected exactly one extra character.")
    }
}
