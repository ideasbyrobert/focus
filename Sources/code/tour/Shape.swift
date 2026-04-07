public class Shape
{
    public var numberOfSides: Int

    public init()
    {
        numberOfSides = 0
    }

    public func simpleDescription() -> String
    {
        "A shape with \(numberOfSides) sides."
    }
}
