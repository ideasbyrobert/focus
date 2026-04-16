public func printAccessForNegatedEntry(allowedEntry: Bool)
{
    if !allowedEntry
    {
        print("ACCESS DENIED")
    }
}

public func printAccessForDoorAndRetina(enteredDoorCode: Bool, passedRetinaScan: Bool)
{
    if enteredDoorCode && passedRetinaScan
    {
        print("Welcome!")
    }
    else
    {
        print("ACCESS DENIED")
    }
}

public func printAccessForDoorKeyOrOverride(hasDoorKey: Bool, knowsOverridePassword: Bool)
{
    if hasDoorKey || knowsOverridePassword
    {
        print("Welcome!")
    }
    else
    {
        print("ACCESS DENIED")
    }
}

public func printAccessForCombinedOperators(
    enteredDoorCode: Bool,
    passedRetinaScan: Bool,
    hasDoorKey: Bool,
    knowsOverridePassword: Bool
)
{
    if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword
    {
        print("Welcome!")
    }
    else
    {
        print("ACCESS DENIED")
    }
}

public func printAccessForExplicitParentheses(
    enteredDoorCode: Bool,
    passedRetinaScan: Bool,
    hasDoorKey: Bool,
    knowsOverridePassword: Bool
)
{
    if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword
    {
        print("Welcome!")
    }
    else
    {
        print("ACCESS DENIED")
    }
}
