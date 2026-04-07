public func teamScore(for scores: [Int]) -> Int
{
    var teamScore = 0

    for score in scores
    {
        if score > 50
        {
            teamScore += 3
        }
        else
        {
            teamScore += 1
        }
    }

    return teamScore
}

public func scoreDecoration(for teamScore: Int) -> String
{
    if teamScore > 10
    {
        "🎉"
    }
    else
    {
        ""
    }
}

public func greeting(for optionalName: String?, whenMissing missingGreeting: String = "Hello!") -> String
{
    var greeting = missingGreeting

    if let name = optionalName
    {
        greeting = "Hello, \(name)"
    }

    return greeting
}

public func informalGreeting(nickname: String?, fullName: String) -> String
{
    "Hi \(nickname ?? fullName)"
}

public func nicknameGreeting(nickname: String?) -> String?
{
    if let nickname
    {
        return "Hey, \(nickname)"
    }

    return nil
}

public func describeVegetable(_ vegetable: String) -> String
{
    switch vegetable
    {
    case "celery":
        return "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        return "That would make a good tea sandwich."
    case let value where value.hasSuffix("pepper"):
        return "Is it a spicy \(value)?"
    default:
        return "Everything tastes good in soup."
    }
}

public func largestNumber(in interestingNumbers: [String: [Int]]) -> (kind: String, value: Int)
{
    var largestKind = ""
    var largestValue = 0

    for (kind, numbers) in interestingNumbers
    {
        for number in numbers
        {
            if number > largestValue
            {
                largestKind = kind
                largestValue = number
            }
        }
    }

    return (largestKind, largestValue)
}

public func firstPowerOfTwo(startingAt value: Int, whileLessThan limit: Int) -> Int
{
    var result = value

    while result < limit
    {
        result *= 2
    }

    return result
}

public func repeatedDoubling(startingAt value: Int, whileLessThan limit: Int) -> Int
{
    var result = value

    repeat
    {
        result *= 2
    }
    while result < limit

    return result
}

public func totalFromZero(to upperBound: Int) -> Int
{
    var total = 0

    for index in 0..<upperBound
    {
        total += index
    }

    return total
}
