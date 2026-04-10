public enum RansomNote
{
    public static func solve(_ note: String, using magazine: String) -> Bool
    {
        var counts: [Character: Int] = [:]

        for character in magazine
        {
            counts[character, default: 0] += 1
        }

        for character in note
        {
            guard let count = counts[character], count > 0 else
            {
                return false
            }

            counts[character] = count - 1
        }

        return true
    }
}
