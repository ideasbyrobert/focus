public func arithmeticResults() -> (sum: Int, difference: Int, product: Int, quotient: Double)
{
    (
        sum: 1 + 2,
        difference: 5 - 3,
        product: 2 * 3,
        quotient: 10.0 / 2.5
    )
}

public func concatenatedGreeting() -> String
{
    "hello, " + "world"
}

public func positiveRemainder() -> Int
{
    9 % 4
}

public func negativeRemainder() -> Int
{
    -9 % 4
}

public func printNegativeRemaindersDividedByFour()
{
    for value in -5...0
    {
        print(value % 4)
    }
}

public func unaryMinusResults() -> (three: Int, minusThree: Int, plusThree: Int)
{
    let three = 3
    let minusThree = -three
    let plusThree = -minusThree

    return (three, minusThree, plusThree)
}

public func unaryPlusResult() -> (minusSix: Int, alsoMinusSix: Int)
{
    let minusSix = -6
    let alsoMinusSix = +minusSix

    return (minusSix, alsoMinusSix)
}
