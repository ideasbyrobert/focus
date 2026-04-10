import XCTest
@testable import AlgorithmStackAndQueue

final class AsteroidCollisionTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(AsteroidCollision.solve([5, 10, -5]), [5, 10])
    }

    func testHandlesEqualMagnitudeCollision()
    {
        XCTAssertEqual(AsteroidCollision.solve([8, -8]), [])
    }

    func testHandlesNonCollidingDirections()
    {
        XCTAssertEqual(AsteroidCollision.solve([-2, -1, 1, 2]), [-2, -1, 1, 2])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(AsteroidCollision.solve([4, 8, -2, -8, 3, -10, 12, -1, -12, 15]), [-10, 15])
    }
}
