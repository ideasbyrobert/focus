public extension Double
{
    var absoluteValue: Double
    {
        self >= 0 ? self : -self
    }
}
