public let possibleNumber = "123"
public let convertedNumber = Int(possibleNumber)

public func serverResponseCodeLifecycle() -> (initial: Int?, final: Int?)
{
    var serverResponseCode: Int? = 404
    let initial = serverResponseCode

    serverResponseCode = nil

    return (initial, serverResponseCode)
}

public func defaultSurveyAnswer() -> String?
{
    var surveyAnswer: String?
    surveyAnswer = nil

    return surveyAnswer
}

public func convertedNumberContainsAValue() -> Bool
{
    convertedNumber != nil
}

public func printConvertedNumberPresence()
{
    if convertedNumber != nil
    {
        print("convertedNumber contains some integer value.")
    }
}
