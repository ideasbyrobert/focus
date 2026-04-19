public func stringCopyDemonstratesValueSemantics() -> (original: String, copy: String)
{
    let original = "Swift"
    var copy = original
    copy += " String"

    return (original, copy)
}
