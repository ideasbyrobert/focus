public enum LengthOfLastWord
{
    public static func solve(_ text: String) -> Int
    {
        let characters = Array(text)
        var index = characters.count
        var length = 0

        while index > 0 && characters[index - 1] == " "
        {
            index -= 1
        }

        while index > 0 && characters[index - 1] != " "
        {
            length += 1
            index -= 1
        }

        return length
    }
}
