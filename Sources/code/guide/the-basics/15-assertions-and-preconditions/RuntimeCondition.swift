public struct RuntimeCondition
{
    public let isSatisfied: Bool
    public let message: String?

    public init(isSatisfied: Bool, message: String?)
    {
        self.isSatisfied = isSatisfied
        self.message = message
    }
}
