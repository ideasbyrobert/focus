public func eAcuteCharacters() -> (precomposed: Character, combined: Character, areEqual: Bool)
{
    let eAcute: Character = "\u{E9}"
    let combinedEAcute: Character = "\u{65}\u{301}"

    return (eAcute, combinedEAcute, eAcute == combinedEAcute)
}

public func hangulCharacters() -> (precomposed: Character, decomposed: Character)
{
    let precomposed: Character = "\u{D55C}"
    let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"

    return (precomposed, decomposed)
}

public func enclosedEAcuteCharacter() -> Character
{
    let enclosedEAcute: Character = "\u{E9}\u{20DD}"

    return enclosedEAcute
}

public func regionalIndicatorForUSCharacter() -> Character
{
    let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"

    return regionalIndicatorForUS
}
