public enum SimplifyPath
{
    public static func solve(_ path: String) -> String
    {
        var stack: [String] = []

        for component in path.split(separator: "/")
        {
            switch component
            {
            case ".":
                continue
            case "..":
                _ = stack.popLast()
            default:
                stack.append(String(component))
            }
        }

        return "/" + stack.joined(separator: "/")
    }
}
