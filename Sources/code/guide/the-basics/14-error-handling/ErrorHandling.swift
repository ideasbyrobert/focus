public func canThrowAnError(condition: Bool) throws
{
    if condition
    {
        throw SimpleError.someError
    }
}

public func runCanThrowAnError(condition: Bool) -> String
{
    do
    {
        try canThrowAnError(condition: condition)

        return "No Error"
    }
    catch
    {
        return "Error"
    }
}
