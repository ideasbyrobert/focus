public final class Trie
{
    private let root = TrieNode()

    public init()
    {
    }

    public func insert(_ word: String)
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
        guard let node = node(for: word) else
        {
            return false
        }

        return node.isTerminal
    }

    public func startsWith(_ prefix: String) -> Bool
    {
        node(for: prefix) != nil
    }

    private func node(for word: String) -> TrieNode?
    {
        var current = root

        for character in word
        {
            guard let next = current.children[character] else
            {
                return nil
            }

            current = next
        }

        return current
    }
}
