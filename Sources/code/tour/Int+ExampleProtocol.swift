extension Int: ExampleProtocol
{
    public var simpleDescription: String
    {
        "The number \(self)"
    }

    public mutating func adjust()
    {
        self += 42
    }
}
