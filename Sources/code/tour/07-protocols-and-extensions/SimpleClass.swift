public final class SimpleClass: ExampleProtocol
{
    public var simpleDescription: String
    public var anotherProperty: Int

    public init()
    {
        simpleDescription = "A very simple class."
        anotherProperty = 69105
    }

    public func adjust()
    {
        simpleDescription += " Now 100% adjusted."
    }
}
