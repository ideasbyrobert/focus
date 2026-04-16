public func rowHeightUsingTernary(contentHeight: Int, hasHeader: Bool) -> Int
{
    contentHeight + (hasHeader ? 50 : 20)
}

public func rowHeightUsingConditional(contentHeight: Int, hasHeader: Bool) -> Int
{
    let rowHeight: Int

    if hasHeader
    {
        rowHeight = contentHeight + 50
    }
    else
    {
        rowHeight = contentHeight + 20
    }

    return rowHeight
}
