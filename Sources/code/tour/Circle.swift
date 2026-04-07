public final class Circle: NamedShape
{
    public var radius: Double

    public init(radius: Double, name: String)
    {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 0
    }

    public func area() -> Double
    {
        Double.pi * radius * radius
    }

    public override func simpleDescription() -> String
    {
        "A circle with radius \(radius)."
    }
}
