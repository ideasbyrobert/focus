public func twoThousandAndOne() -> UInt16
{
    let twoThousand: UInt16 = 2_000
    let one: UInt8 = 1

    return twoThousand + UInt16(one)
}

public func inferredPi() -> Double
{
    let three = 3
    let pointOneFourOneFiveNine = 0.14159

    return Double(three) + pointOneFourOneFiveNine
}

public func integerPi() -> Int
{
    Int(inferredPi())
}

public func truncatedInteger(_ value: Double) -> Int
{
    Int(value)
}
