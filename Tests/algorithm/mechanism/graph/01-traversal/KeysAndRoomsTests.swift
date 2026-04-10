import XCTest
@testable import AlgorithmGraph

final class KeysAndRoomsTests: XCTestCase
{
    func testHandlesCanonicalReachableInput()
    {
        XCTAssertTrue(KeysAndRooms.solve([[1], [2], [3], []]))
    }

    func testHandlesCanonicalUnreachableInput()
    {
        XCTAssertFalse(KeysAndRooms.solve([[1, 3], [3, 0, 1], [2], [0]]))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let rooms = [
            [1, 2],
            [3],
            [3, 4],
            [5],
            [5, 6],
            [7],
            [7],
            [],
        ]

        XCTAssertTrue(KeysAndRooms.solve(rooms))
    }
}
