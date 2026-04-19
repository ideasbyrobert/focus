public func emptyStringsAreEquivalent() -> Bool
{
    let emptyString = ""
    let anotherEmptyString = String()

    return emptyString == anotherEmptyString
}

public func printEmptyStringMessage()
{
    let emptyString = ""

    if emptyString.isEmpty
    {
        print("Nothing to see here")
    }
}
