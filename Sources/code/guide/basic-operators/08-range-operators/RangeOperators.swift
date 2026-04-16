private let exampleNames = ["Anna", "Alex", "Brian", "Jack"]

public func closedRangeTypeName() -> String
{
    String(describing: type(of: 1...2))
}

public func singleValueClosedRange() -> ClosedRange<Int>
{
    1...1
}

public func closedRangeValidationMessage(lowerBound: Int, upperBound: Int) -> String?
{
    guard lowerBound <= upperBound else
    {
        return "lowerBound <= upperBound"
    }

    _ = lowerBound...upperBound

    return nil
}

public func printClosedRangeMultiplicationTable()
{
    for index in 1...5
    {
        print("\(index) times 5 is \(index * 5)")
    }
}

public func halfOpenRangeTypeName() -> String
{
    String(describing: type(of: 1..<2))
}

public func emptyHalfOpenRange() -> Range<Int>
{
    1..<1
}

public func halfOpenRangeValidationMessage(lowerBound: Int, upperBound: Int) -> String?
{
    guard lowerBound <= upperBound else
    {
        return "lowerBound <= upperBound"
    }

    _ = lowerBound..<upperBound

    return nil
}

public func printNamesUsingHalfOpenRange()
{
    let count = exampleNames.count

    for index in 0..<count
    {
        print("Person \(index + 1) is called \(exampleNames[index])")
    }
}

public func printNamesFromIndexTwo()
{
    for name in exampleNames[2...]
    {
        print(name)
    }
}

public func printNamesThroughIndexTwo()
{
    for name in exampleNames[...2]
    {
        print(name)
    }
}

public func printNamesBeforeIndexTwo()
{
    for name in exampleNames[..<2]
    {
        print(name)
    }
}

public func oneSidedRangeTypeName() -> String
{
    String(describing: type(of: ...5))
}

public func oneSidedRangeContainsResults() -> (containsSeven: Bool, containsFour: Bool, containsMinusOne: Bool)
{
    let range = ...5

    return (
        containsSeven: range.contains(7),
        containsFour: range.contains(4),
        containsMinusOne: range.contains(-1)
    )
}
