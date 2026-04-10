public enum RemovingStarsFromAString
{
    public static func solve(_ text: String) -> String
    {
        var stack: [Character] = []

        for character in text
        {
            if character == "*"
            {
                _ = stack.popLast()
            }
            else
            {
                stack.append(character)
            }
        }

        return String(stack)
    }
}
