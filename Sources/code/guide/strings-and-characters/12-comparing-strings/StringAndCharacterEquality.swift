public func quotationEqualityMessage() -> String?
{
    let quotation = "We're a lot alike, you and I."
    let sameQuotation = "We're a lot alike, you and I."

    if quotation == sameQuotation
    {
        return "These two strings are considered equal"
    }

    return nil
}

public func characterCanonicalEquivalenceMessage() -> String
{
    let eAcute: Character = "\u{E9}"
    let combinedEAcute: Character = "\u{65}\u{301}"

    if eAcute != combinedEAcute
    {
        return "not equivalent, which isn't expected"
    }

    return "equivalent, as expected"
}

public func stringCanonicalEquivalenceMessage() -> String
{
    let cafe1 = "caf\u{E9}"
    let cafe2 = "caf\u{65}\u{301}"

    if cafe1 != cafe2
    {
        return "not equivalent, which isn't expected"
    }

    return "equivalent, as expected"
}

public func eAcuteQuestionEqualityMessage() -> String?
{
    let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
    let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"

    if eAcuteQuestion == combinedEAcuteQuestion
    {
        return "These two strings are considered equal"
    }

    return nil
}

public func latinAndCyrillicComparisonMessage() -> String?
{
    let latinCapitalLetterA: Character = "\u{41}"
    let cyrillicCapitalLetterA: Character = "\u{0410}"

    if latinCapitalLetterA != cyrillicCapitalLetterA
    {
        return "These two characters aren't equivalent."
    }

    return nil
}
