public let possibleString: String? = "An optional string."
public let forcedString: String = possibleString!

public let assumedString: String! = "An implicitly unwrapped optional string."
public let implicitString: String = assumedString
public let optionalString = assumedString

public func printAssumedStringIfPresent()
{
    if assumedString != nil
    {
        print(assumedString!)
    }
}

public func printDefiniteStringFromAssumedString()
{
    if let definiteString = assumedString
    {
        print(definiteString)
    }
}
