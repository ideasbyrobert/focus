public func elementIfValid<T>(at index: Int, in values: [T]) -> T?
{
    guard values.indices.contains(index) else
    {
        return nil
    }

    return values[index]
}

public func replacingElementIfValid<T>(_ value: T, at index: Int, in values: [T]) -> [T]
{
    guard values.indices.contains(index) else
    {
        return values
    }

    var copy = values
    copy[index] = value

    return copy
}
