public final class EquilateralTriangle: NamedShape
{
    public var sideLength: Double

    public init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    public var perimeter: Double
    {
        get
        {
            3.0 * sideLength
        }
        set
        {
            sideLength = newValue / 3.0
        }
    }

    public override func simpleDescription() -> String
    {
        "An equilateral triangle with sides of length \(sideLength)."
    }
}
