public func wiseWords() -> String
{
    "\"Imagination is more important than knowledge\" - Einstein"
}

public func printWiseWords()
{
    print(wiseWords())
}

public func specialCharacterScalars() -> (dollarSign: String, blackHeart: String, sparklingHeart: String)
{
    let dollarSign = "\u{24}"
    let blackHeart = "\u{2665}"
    let sparklingHeart = "\u{1F496}"

    return (dollarSign, blackHeart, sparklingHeart)
}

public func threeDoubleQuotationMarks() -> String
{
    """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""
}

public func printThreeDoubleQuotationMarks()
{
    print(threeDoubleQuotationMarks())
}
