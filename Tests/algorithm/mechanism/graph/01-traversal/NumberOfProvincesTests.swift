import XCTest
@testable import AlgorithmGraph

final class NumberOfProvincesTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let isConnected = [
            [1, 1, 0],
            [1, 1, 0],
            [0, 0, 1],
        ]

        XCTAssertEqual(NumberOfProvinces.solve(isConnected), 2)
    }

    func testHandlesFullyConnectedCities()
    {
        let isConnected = [
            [1, 1, 1],
            [1, 1, 1],
            [1, 1, 1],
        ]

        XCTAssertEqual(NumberOfProvinces.solve(isConnected), 1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let isConnected = [
            [1, 1, 0, 0, 0, 0, 0, 0, 0, 0],
            [1, 1, 1, 0, 0, 0, 0, 0, 0, 0],
            [0, 1, 1, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
            [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
            [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 1, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 1, 1, 0],
            [0, 0, 0, 0, 0, 0, 0, 1, 1, 1],
            [0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
        ]

        XCTAssertEqual(NumberOfProvinces.solve(isConnected), 4)
    }
}
