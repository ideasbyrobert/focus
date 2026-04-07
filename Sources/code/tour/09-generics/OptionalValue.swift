public enum OptionalValue<Wrapped>
{
    case none
    case some(Wrapped)
}

extension OptionalValue: Equatable where Wrapped: Equatable
{
}
