public enum ValidAnagram
{
    public static func solve(_ left: String, _ right: String) -> Bool
    {
        guard left.count == right.count else
        {
            return false
        }

        var counts: [Character: Int] = [:]

        for character in left
        {
            counts[character, default: 0] += 1
        }

        for character in right
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
