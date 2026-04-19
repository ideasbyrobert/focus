public func beginningSubstring() -> Substring
{
    let greeting = "Hello, world!"
    let index = greeting.firstIndex(of: ",") ?? greeting.endIndex

    return greeting[..<index]
}

public func longTermStringFromBeginningSubstring() -> String
{
    String(beginningSubstring())
}
