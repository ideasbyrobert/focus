public struct SimpleStructure: ExampleProtocol
{
    public var simpleDescription: String

    public init()
    {
        simpleDescription = "A simple structure"
    }

    public mutating func adjust()
    {
        simpleDescription += " (adjusted)"
    }
}
