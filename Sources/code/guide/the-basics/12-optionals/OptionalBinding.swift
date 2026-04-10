public func printActualNumberFromPossibleNumber()
{
    if let actualNumber = Int(possibleNumber)
    {
        print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
    }
    else
    {
        print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
    }
}

public func printMyNumber()
{
    let myNumber = Int(possibleNumber)

    if let myNumber = myNumber
    {
        print("My number is \(myNumber)")
    }
}

public func printMyNumberUsingShorthandOptionalBinding()
{
    let myNumber = Int(possibleNumber)

    if let myNumber
    {
        print("My number is \(myNumber)")
    }
}

public func multipleOptionalBindingOutputs() -> [String]
{
    var outputs: [String] = []

    if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100
    {
        outputs.append("\(firstNumber) < \(secondNumber) < 100")
    }

    if let firstNumber = Int("4")
    {
        if let secondNumber = Int("42")
        {
            if firstNumber < secondNumber && secondNumber < 100
            {
                outputs.append("\(firstNumber) < \(secondNumber) < 100")
            }
        }
    }

    return outputs
}

public func fallbackGreeting(name: String?) -> String
{
    "Hello, " + (name ?? "friend") + "!"
}

public func forceUnwrappedNumber() -> Int
{
    let possibleNumber = "123"
    let convertedNumber = Int(possibleNumber)

    return convertedNumber!
}

public func guardedNumber() -> Int
{
    let possibleNumber = "123"
    let convertedNumber = Int(possibleNumber)

    guard let number = convertedNumber else
    {
        fatalError("The number was invalid")
    }

    return number
}
