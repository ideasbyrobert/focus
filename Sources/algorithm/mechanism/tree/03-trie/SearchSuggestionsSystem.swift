public enum SearchSuggestionsSystem
{
    public static func solve(_ products: [String], _ searchWord: String) -> [[String]]
    {
        let root = TrieNode()

        for product in products.sorted()
        {
            insert(product, into: root)
        }

        var results: [[String]] = []
        var current: TrieNode? = root
        var prefix = ""

        for character in searchWord
        {
            prefix.append(character)
            current = current?.children[character]

            guard let current else
            {
                results.append([])
                continue
            }

            var suggestions: [String] = []
            collectSuggestions(from: current, prefix: prefix, into: &suggestions)
            results.append(suggestions)
        }

        return results
    }

    private static func insert(_ word: String, into root: TrieNode)
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

    private static func collectSuggestions(from node: TrieNode, prefix: String, into suggestions: inout [String])
    {
        if suggestions.count == 3
        {
            return
        }

        if node.isTerminal
        {
            suggestions.append(prefix)
        }

        if suggestions.count == 3
        {
            return
        }

        for character in node.children.keys.sorted()
        {
            collectSuggestions(
                from: node.children[character]!,
                prefix: prefix + String(character),
                into: &suggestions
            )

            if suggestions.count == 3
            {
                return
            }
        }
    }
}
