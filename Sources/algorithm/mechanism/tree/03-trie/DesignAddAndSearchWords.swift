public final class WordDictionary
{
    private let root = TrieNode()

    public init()
    {
    }

    public func addWord(_ word: String)
    {
        var current = root

        for character in word
        {
            if current.children[character] == nil
            {
                current.children[character] = TrieNode()
            }

            current = current.children[character]!
        }

        current.isTerminal = true
    }

    public func search(_ word: String) -> Bool
    {
        let characters = Array(word)
        return search(characters, index: 0, node: root)
    }

    private func search(_ characters: [Character], index: Int, node: TrieNode) -> Bool
    {
        if index == characters.count
        {
            return node.isTerminal
        }

        let character = characters[index]

        if character == "."
        {
            for child in node.children.values
            {
                if search(characters, index: index + 1, node: child)
                {
                    return true
                }
            }

            return false
        }

        guard let child = node.children[character] else
        {
            return false
        }

        return search(characters, index: index + 1, node: child)
    }
}
