public enum GroupAnagrams
{
    public static func solve(_ words: [String]) -> [[String]]
    {
        var groupsByKey: [String: [String]] = [:]

        for word in words
        {
            let key = String(word.sorted())
            groupsByKey[key, default: []].append(word)
        }

        return Array(groupsByKey.values)
    }
}
