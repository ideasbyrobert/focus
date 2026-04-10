public func printFriendlyWelcome()
{
    print(updatedFriendlyWelcome())
}

public func printWithoutNewline()
{
    let someValue = 10

    print(someValue, terminator: "")
    print(someValue)
}

public func printInterpolatedFriendlyWelcome()
{
    print("The current value of friendlyWelcome is \(updatedFriendlyWelcome())")
}
