public func assignedValueAfterUpdate() -> Int
{
    let b = 10
    var a = 5
    a = b

    return a
}

public func decomposedTupleValues() -> (x: Int, y: Int)
{
    let (x, y) = (1, 2)

    return (x, y)
}

public func variableTupleValues() -> (x: Int, y: Int)
{
    var (x, y) = (1, 2)
    (x, y) = (y, x)
    (x, y) = (y, x)

    return (x, y)
}
