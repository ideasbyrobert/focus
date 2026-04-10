public enum ValidParentheses
{
    public static func solve(_ text: String) -> Bool
    {
        var stack: [Character] = []
        let pairs: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{",
        ]

        for character in text
        {
            if pairs.values.contains(character)
            {
                stack.append(character)
                continue
            }

            guard let expectedOpening = pairs[character], stack.popLast() == expectedOpening else
            {
                return false
            }
        }

        return stack.isEmpty
    }
}
