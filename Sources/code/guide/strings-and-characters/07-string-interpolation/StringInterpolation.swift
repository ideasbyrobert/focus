public func interpolatedMessage(multiplier: Int = 3) -> String
{
    "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
}

public func printExtendedDelimiterInterpolationSyntax(multiplier: Int)
{
    print(#"Write an interpolated string in Swift using \(multiplier)."#)
}

public func printInterpolatedExtendedDelimiterExpression()
{
    print(#"6 times 7 is \#(6 * 7)."#)
}
