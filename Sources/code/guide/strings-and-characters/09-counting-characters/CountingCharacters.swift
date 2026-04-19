public func unusualMenagerieCharacterCount() -> Int
{
    let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"

    return unusualMenagerie.count
}

public func printUnusualMenagerieCharacterCount()
{
    let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"

    print("unusualMenagerie has \(unusualMenagerie.count) characters")
}

public func cafeCharacterCounts() -> (beforeWord: String, beforeCount: Int, afterWord: String, afterCount: Int)
{
    var word = "cafe"
    let beforeWord = word
    let beforeCount = word.count

    word += "\u{301}"

    return (beforeWord, beforeCount, word, word.count)
}

public func printCafeCharacterCounts()
{
    var word = "cafe"
    print("the number of characters in \(word) is \(word.count)")

    word += "\u{301}"
    print("the number of characters in \(word) is \(word.count)")
}
