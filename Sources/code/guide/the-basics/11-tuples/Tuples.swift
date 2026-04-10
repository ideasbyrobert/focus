public let http404Error = (404, "Not Found")
public let http200Status = (statusCode: 200, description: "OK")

public func decomposedHTTP404Error() -> (statusCode: Int, statusMessage: String)
{
    let (statusCode, statusMessage) = http404Error

    return (statusCode, statusMessage)
}

public func ignoredHTTP404StatusCode() -> Int
{
    let (justTheStatusCode, _) = http404Error

    return justTheStatusCode
}

public func indexedHTTP404Error() -> (statusCode: Int, statusMessage: String)
{
    (http404Error.0, http404Error.1)
}

public func printDecomposedHTTP404Error()
{
    let (statusCode, statusMessage) = http404Error

    print("The status code is \(statusCode)")
    print("The status message is \(statusMessage)")
}

public func printIgnoredHTTP404StatusCode()
{
    let (justTheStatusCode, _) = http404Error

    print("The status code is \(justTheStatusCode)")
}

public func printIndexedHTTP404Error()
{
    print("The status code is \(http404Error.0)")
    print("The status message is \(http404Error.1)")
}

public func printNamedHTTP200Status()
{
    print("The status code is \(http200Status.statusCode)")
    print("The status message is \(http200Status.description)")
}
