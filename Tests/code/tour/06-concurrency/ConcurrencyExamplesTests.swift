import XCTest
@testable import CodeTour

final class ConcurrencyExamplesTests: XCTestCase
{
    func testFetchFunctionsMatchTheGuidedTourExamples() async
    {
        let primaryUserID = await fetchUserID(from: "primary")
        let secondaryUserID = await fetchUserID(from: "secondary")
        let primaryUsername = await fetchUsername(from: "primary")
        let secondaryUsername = await fetchUsername(from: "secondary")

        XCTAssertEqual(primaryUserID, 97)
        XCTAssertEqual(secondaryUserID, 501)
        XCTAssertEqual(primaryUsername, "Guest")
        XCTAssertEqual(secondaryUsername, "John Appleseed")
    }

    func testConnectUserGreetingMatchesTheGuidedTour() async
    {
        let greeting = await connectUserGreeting(to: "primary")

        XCTAssertEqual(greeting, "Hello Guest, user ID 97")
    }

    func testTaskCanCallConnectUserFromSynchronousContext() async throws
    {
        let capture = StandardOutputCapture()

        let output = try await capture.capture
        {
            let task = Task
            {
                await connectUser(to: "primary")
            }

            _ = await task.value
        }

        XCTAssertEqual(output.trimmingCharacters(in: .whitespacesAndNewlines), "Hello Guest, user ID 97")
    }

    func testTaskGroupCollectsUserIDs() async
    {
        let userIDs = await fetchUserIDs(from: ["primary", "secondary", "development"])

        XCTAssertEqual(userIDs, [97, 501, 501])
    }
}
