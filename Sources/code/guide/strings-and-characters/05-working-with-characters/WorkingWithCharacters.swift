public func printDogCharacters()
{
    for character in "Dog!🐶"
    {
        print(character)
    }
}

public func exclamationMarkCharacter() -> Character
{
    let exclamationMark: Character = "!"

    return exclamationMark
}

public func catStringFromCharacters() -> String
{
    let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
    let catString = String(catCharacters)

    return catString
}

public func printCatStringFromCharacters()
{
    print(catStringFromCharacters())
}
