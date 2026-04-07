public actor ServerConnection
{
    public var server: String
    private var activeUsers: [Int]

    public init(server: String = "primary")
    {
        self.server = server
        activeUsers = []
    }

    public func connect() async -> Int
    {
        let userID = await fetchUserID(from: server)
        activeUsers.append(userID)

        return userID
    }

    public func activeUserIDs() -> [Int]
    {
        activeUsers
    }
}
