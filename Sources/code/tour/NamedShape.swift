public class NamedShape
{
    public var numberOfSides: Int
    public let name: String

    public init(name: String)
    {
        numberOfSides = 0
        self.name = name
    }

    public func simpleDescription() -> String
    {
        "A shape with \(numberOfSides) sides."
    }
}
