import XCTest
@testable import CodeTour

final class ServerConnectionTests: XCTestCase
{
    func testConnectStoresTheFetchedUserID() async
    {
        let server = ServerConnection()

        let userID = await server.connect()
        let activeUsers = await server.activeUserIDs()

        XCTAssertEqual(userID, 97)
        XCTAssertEqual(activeUsers, [97])
    }

    func testConnectUsesTheConfiguredServer() async
    {
        let server = ServerConnection(server: "secondary")

        let userID = await server.connect()

        XCTAssertEqual(userID, 501)
    }
}
