public let orangesAreOrange = true
public let turnipsAreDelicious = false

public func printTurnipTaste()
{
    if turnipsAreDelicious
    {
        print("Mmm, tasty turnips!")
    }
    else
    {
        print("Eww, turnips are horrible.")
    }
}

public func equalsOne(_ value: Int) -> Bool
{
    value == 1
}
