public enum WordSearchII
{
    public static func solve(_ board: [[Character]], _ words: [String]) -> [String]
    {
        guard !board.isEmpty, !board[0].isEmpty, !words.isEmpty else
        {
            return []
        }

        final class TrieNode
        {
            var children: [Character: TrieNode] = [:]
            var word: String?
        }

        let root = TrieNode()

        for word in words
        {
            var node = root

            for character in word
            {
                if node.children[character] == nil
                {
                    node.children[character] = TrieNode()
                }

                node = node.children[character]!
            }

            node.word = word
        }

        var board = board
        let rowCount = board.count
        let columnCount = board[0].count
        var foundWords: [String] = []

        func search(_ row: Int, _ column: Int, _ node: TrieNode)
        {
            guard row >= 0, row < rowCount, column >= 0, column < columnCount else
            {
                return
            }

            let character = board[row][column]

            if character == "#"
            {
                return
            }

            guard let nextNode = node.children[character] else
            {
                return
            }

            if let word = nextNode.word
            {
                foundWords.append(word)
                nextNode.word = nil
            }

            board[row][column] = "#"

            search(row + 1, column, nextNode)
            search(row - 1, column, nextNode)
            search(row, column + 1, nextNode)
            search(row, column - 1, nextNode)

            board[row][column] = character
        }

        for row in 0..<rowCount
        {
            for column in 0..<columnCount
            {
                search(row, column, root)
            }
        }

        return foundWords
    }
}
