public func ageAssertionCondition(age: Int) -> RuntimeCondition
{
    RuntimeCondition(
        isSatisfied: age >= 0,
        message: "A person's age can't be less than zero."
    )
}

public func ageAssertionWithoutMessage(age: Int) -> RuntimeCondition
{
    RuntimeCondition(
        isSatisfied: age >= 0,
        message: nil
    )
}

public func interpolatedAgeAssertion(age: Int) -> RuntimeCondition
{
    RuntimeCondition(
        isSatisfied: age >= 0,
        message: "A person's age can't be less than zero, but value is \(age)."
    )
}

public func rollerCoasterRideDecision(age: Int) -> AgeRideDecision
{
    if age > 10
    {
        return AgeRideDecision(
            printedMessage: "You can ride the roller-coaster or the ferris wheel.",
            assertionFailureMessage: nil
        )
    }

    if age >= 0
    {
        return AgeRideDecision(
            printedMessage: "You can ride the ferris wheel.",
            assertionFailureMessage: nil
        )
    }

    return AgeRideDecision(
        printedMessage: nil,
        assertionFailureMessage: "A person's age can't be less than zero."
    )
}

public func positiveIndexPrecondition(index: Int) -> RuntimeCondition
{
    RuntimeCondition(
        isSatisfied: index > 0,
        message: "Index must be greater than zero."
    )
}
