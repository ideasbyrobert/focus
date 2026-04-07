public enum ServerResponse: Equatable
{
    case result(String, String)
    case failure(String)
    case cached(String, String)

    public func summary() -> String
    {
        switch self
        {
        case let .result(sunrise, sunset):
            return "Sunrise is at \(sunrise) and sunset is at \(sunset)."
        case let .failure(message):
            return "Failure... \(message)"
        case let .cached(sunrise, sunset):
            return "Cached sunrise is at \(sunrise) and cached sunset is at \(sunset)."
        }
    }
}
