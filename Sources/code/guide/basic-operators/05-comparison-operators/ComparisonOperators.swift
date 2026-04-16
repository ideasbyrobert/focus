public func scalarComparisonResults() -> (
    equal: Bool,
    notEqual: Bool,
    greaterThan: Bool,
    lessThan: Bool,
    greaterThanOrEqual: Bool,
    lessThanOrEqual: Bool
)
{
    (
        equal: 1 == 1,
        notEqual: 2 != 1,
        greaterThan: 2 > 1,
        lessThan: 1 < 2,
        greaterThanOrEqual: 1 >= 1,
        lessThanOrEqual: 2 <= 1
    )
}

public func greeting(for name: String) -> String
{
    if name == "world"
    {
        return "hello, world"
    }

    return "I'm sorry \(name), but I don't recognize you"
}

public func tupleComparisonResults() -> (zebra: Bool, bird: Bool, dog: Bool)
{
    (
        zebra: (1, "zebra") < (2, "apple"),
        bird: (3, "apple") < (3, "bird"),
        dog: (4, "dog") == (4, "dog")
    )
}

public func comparableTupleExample() -> Bool
{
    ("blue", -1) < ("purple", 1)
}
