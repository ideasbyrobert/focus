public func fallbackValueUsingTernary(optionalValue: Int?, defaultValue: Int) -> Int
{
    optionalValue != nil ? optionalValue! : defaultValue
}

public func fallbackValueUsingNilCoalescing(optionalValue: Int?, defaultValue: Int) -> Int
{
    optionalValue ?? defaultValue
}

public func colorNameToUse(userDefinedColorName: String?) -> String
{
    let defaultColorName = "red"

    return userDefinedColorName ?? defaultColorName
}
