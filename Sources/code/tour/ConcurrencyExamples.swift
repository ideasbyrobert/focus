public func fetchUserID(from server: String) async -> Int
{
    if server == "primary"
    {
        return 97
    }

    return 501
}

public func fetchUsername(from server: String) async -> String
{
    let userID = await fetchUserID(from: server)

    if userID == 501
    {
        return "John Appleseed"
    }

    return "Guest"
}

public func connectUserGreeting(to server: String) async -> String
{
    async let userID = fetchUserID(from: server)
    async let username = fetchUsername(from: server)

    return await "Hello \(username), user ID \(userID)"
}

public func connectUser(to server: String) async
{
    print(await connectUserGreeting(to: server))
}

public func fetchUserIDs(from servers: [String]) async -> [Int]
{
    await withTaskGroup(of: Int.self)
    {
        group in

        for server in servers
        {
            group.addTask
            {
                await fetchUserID(from: server)
            }
        }

        var results: [Int] = []

        for await result in group
        {
            results.append(result)
        }

        return results.sorted()
    }
}
