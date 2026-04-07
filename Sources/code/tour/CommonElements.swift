public func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
where T.Element: Equatable, T.Element == U.Element
{
    let rightItems = Array(rhs)

    for leftItem in lhs
    {
        for rightItem in rightItems
        {
            if leftItem == rightItem
            {
                return true
            }
        }
    }

    return false
}

public func commonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
where T.Element: Equatable, T.Element == U.Element
{
    let rightItems = Array(rhs)
    var matches: [T.Element] = []

    for leftItem in lhs
    {
        for rightItem in rightItems
        {
            if leftItem == rightItem
            {
                matches.append(leftItem)
                break
            }
        }
    }

    return matches
}
