public func concatenatedWelcome() -> String
{
    let string1 = "hello"
    let string2 = " there"
    let welcome = string1 + string2

    return welcome
}

public func appendedInstruction() -> String
{
    let string2 = " there"
    var instruction = "look over"
    instruction += string2

    return instruction
}

public func welcomeWithAppendedCharacter() -> String
{
    var welcome = concatenatedWelcome()
    let exclamationMark: Character = "!"
    welcome.append(exclamationMark)

    return welcome
}

public func badMultilineConcatenation() -> String
{
    let badStart = """
        one
        two
        """
    let end = """
        three
        """

    return badStart + end
}

public func goodMultilineConcatenation() -> String
{
    let goodStart = """
        one
        two

        """
    let end = """
        three
        """

    return goodStart + end
}

public func printBadMultilineConcatenation()
{
    print(badMultilineConcatenation())
}

public func printGoodMultilineConcatenation()
{
    print(goodMultilineConcatenation())
}
