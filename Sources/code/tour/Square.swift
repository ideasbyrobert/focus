public final class Square: NamedShape
{
    public var sideLength: Double

    public init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    public func area() -> Double
    {
        sideLength * sideLength
    }

    public override func simpleDescription() -> String
    {
        "A square with sides of length \(sideLength)."
    }
}
