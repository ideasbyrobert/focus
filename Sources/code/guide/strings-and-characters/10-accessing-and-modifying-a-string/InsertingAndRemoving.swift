public func welcomeAfterInsertions() -> (afterExclamation: String, afterThere: String)
{
    var welcome = "hello"
    welcome.insert("!", at: welcome.endIndex)
    let afterExclamation = welcome

    welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

    return (afterExclamation, welcome)
}

public func welcomeAfterRemovals() -> (afterRemovingExclamation: String, afterRemovingThere: String)
{
    var welcome = "hello there!"
    welcome.remove(at: welcome.index(before: welcome.endIndex))
    let afterRemovingExclamation = welcome

    let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
    welcome.removeSubrange(range)

    return (afterRemovingExclamation, welcome)
}
