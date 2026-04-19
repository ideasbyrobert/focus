public func mutableStringAfterAppend() -> String
{
    var variableString = "Horse"
    variableString += " and carriage"

    return variableString
}

public func printMutableStringAfterAppend()
{
    print("variableString is now \"\(mutableStringAfterAppend())\"")
}
