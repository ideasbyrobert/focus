public let sampleDouble = 3.14159
public let sampleFloat: Float = 3.14159

public func floatSpacingExamples() -> (largeGap: Float, smallGap: Float)
{
    let largeNumber: Float = 10_000
    let smallNumber: Float = 0.001

    return (
        largeGap: largeNumber.nextUp - largeNumber,
        smallGap: smallNumber.nextUp - smallNumber
    )
}

public func floatingPointSpecialValues() -> (positiveInfinity: Double, negativeInfinity: Double, isNaN: Bool)
{
    let positiveInfinity = Double.infinity
    let negativeInfinity = -Double.infinity
    let isNaN = Double.nan.isNaN

    return (positiveInfinity, negativeInfinity, isNaN)
}
