public struct AgeRideDecision
{
    public let printedMessage: String?
    public let assertionFailureMessage: String?

    public init(printedMessage: String?, assertionFailureMessage: String?)
    {
        self.printedMessage = printedMessage
        self.assertionFailureMessage = assertionFailureMessage
    }
}
