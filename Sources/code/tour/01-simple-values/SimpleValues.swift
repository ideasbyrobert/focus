public let implicitInteger = 70
public let implicitDouble = 70.0
public let explicitDouble: Double = 70
public let explicitFloat: Float = 4

public let label = "The width is "
public let width = 94
public let widthLabel = label + String(width)

public let apples = 3
public let oranges = 5
public let appleSummary = "I have \(apples) apples."
public let fruitSummary = "I have \(apples + oranges) pieces of fruit."

public let quotation = """
Even though there's whitespace to the left, the actual lines aren't indented.
Except for this line.
Double quotes (") can appear without being escaped.
I still have \(apples + oranges) pieces of fruit.
"""

public func constantAndVariableValues() -> (myVariable: Int, myConstant: Int)
{
    var myVariable = 42
    myVariable = 50
    let myConstant = 42

    return (myVariable, myConstant)
}

public func mutatedFruits() -> [String]
{
    var fruits = ["strawberries", "limes", "tangerines"]
    fruits[1] = "grapes"
    fruits.append("blueberries")

    return fruits
}

public func mutatedOccupations() -> [String: String]
{
    var occupations = [
        "Malcolm": "Captain",
        "Kaylee": "Mechanic",
    ]

    occupations["Jayne"] = "Public Relations"

    return occupations
}

public func emptyArray() -> [String]
{
    []
}

public func emptyDictionary() -> [String: Float]
{
    [:]
}
