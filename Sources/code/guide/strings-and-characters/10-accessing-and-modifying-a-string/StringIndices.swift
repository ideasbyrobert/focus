public func greetingIndexedCharacters() -> (first: Character, last: Character, second: Character, offsetSeven: Character)
{
    let greeting = "Guten Tag!"
    let index = greeting.index(greeting.startIndex, offsetBy: 7)

    return (
        first: greeting[greeting.startIndex],
        last: greeting[greeting.index(before: greeting.endIndex)],
        second: greeting[greeting.index(after: greeting.startIndex)],
        offsetSeven: greeting[index]
    )
}

public func emptyStringIndicesAreEqual() -> Bool
{
    let emptyString = ""

    return emptyString.isEmpty && emptyString.startIndex == emptyString.endIndex
}

public func printGreetingCharactersWithSpaces()
{
    let greeting = "Guten Tag!"

    for index in greeting.indices
    {
        print("\(greeting[index]) ", terminator: "")
    }

    print("")
}
