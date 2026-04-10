public enum ValidPalindrome
{
    public static func solve(_ text: String) -> Bool
    {
        let characters = Array(text)
        var left = 0
        var right = characters.count - 1

        while left < right
        {
            while left < right, !characters[left].isLetter && !characters[left].isNumber
            {
                left += 1
            }

            while left < right, !characters[right].isLetter && !characters[right].isNumber
            {
                right -= 1
            }

            guard characters[left].lowercased() == characters[right].lowercased() else
            {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }
}
