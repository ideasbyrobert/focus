public func quotationNewlineCount() -> Int
{
    let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

    return quotation.filter
    {
        $0 == "\n"
    }.count
}

public func singleLineAndMultilineStringsAreEqual() -> Bool
{
    let singleLineString = "These are the same."
    let multilineString = """
These are the same.
"""

    return singleLineString == multilineString
}

public func softWrappedQuotationNewlineCount() -> Int
{
    let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

    return softWrappedQuotation.filter
    {
        $0 == "\n"
    }.count
}

public func lineBreaksStartAndEndWithLineFeed() -> (startsWithLineFeed: Bool, endsWithLineFeed: Bool)
{
    let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""

    return (
        startsWithLineFeed: lineBreaks.first == "\n",
        endsWithLineFeed: lineBreaks.last == "\n"
    )
}

public func indentedMultilineStringLines() -> [String]
{
    let linesWithIndentation = """
        This line doesn't begin with whitespace.
            This line begins with four spaces.
        This line doesn't begin with whitespace.
        """

    return linesWithIndentation.split(separator: "\n", omittingEmptySubsequences: false).map(String.init)
}
