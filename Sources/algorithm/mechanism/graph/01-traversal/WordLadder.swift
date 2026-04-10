public enum WordLadder
{
    public static func solve(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int
    {
        let dictionary = Set(wordList)

        guard dictionary.contains(endWord) else
        {
            return 0
        }

        var queue = [(word: beginWord, depth: 1)]
        var index = 0
        var visited: Set<String> = [beginWord]

        while index < queue.count
        {
            let current = queue[index]
            index += 1

            if current.word == endWord
            {
                return current.depth
            }

            for candidate in neighbors(of: current.word)
            {
                if !dictionary.contains(candidate) || !visited.insert(candidate).inserted
                {
                    continue
                }

                queue.append((candidate, current.depth + 1))
            }
        }

        return 0
    }

    private static func neighbors(of word: String) -> [String]
    {
        var results: [String] = []
        let characters = Array(word)

        for index in characters.indices
        {
            for letter in letters
            {
                if characters[index] == letter
                {
                    continue
                }

                var candidate = characters
                candidate[index] = letter
                results.append(String(candidate))
            }
        }

        return results
    }

    private static let letters = Array("abcdefghijklmnopqrstuvwxyz")
}
