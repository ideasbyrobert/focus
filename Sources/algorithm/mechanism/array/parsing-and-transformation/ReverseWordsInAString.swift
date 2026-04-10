public enum ReverseWordsInAString
{
    public static func solve(_ text: String) -> String
    {
        let words = text.split
        {
            $0.isWhitespace
        }

        return words
            .reversed()
            .map(String.init)
            .joined(separator: " ")
    }
}
