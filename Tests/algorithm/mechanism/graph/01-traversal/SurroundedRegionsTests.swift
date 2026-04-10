import XCTest
@testable import AlgorithmGraph

final class SurroundedRegionsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        var board: [[Character]] = [
            Array("XXXX"),
            Array("XOOX"),
            Array("XXOX"),
            Array("XOXX"),
        ]

        SurroundedRegions.solve(&board)

        XCTAssertEqual(
            board,
            [
                Array("XXXX"),
                Array("XXXX"),
                Array("XXXX"),
                Array("XOXX"),
            ]
        )
    }

    func testKeepsBorderConnectedRegions()
    {
        var board: [[Character]] = [
            Array("OO"),
            Array("OO"),
        ]

        SurroundedRegions.solve(&board)

        XCTAssertEqual(
            board,
            [
                Array("OO"),
                Array("OO"),
            ]
        )
    }

    func testHandlesLongDebugFriendlyInput()
    {
        var board: [[Character]] = [
            Array("XXXXXXO"),
            Array("XOOOXXO"),
            Array("XXOXOXO"),
            Array("XOXXOXO"),
            Array("XOOOXXO"),
            Array("XXXXXXX"),
        ]

        SurroundedRegions.solve(&board)

        XCTAssertEqual(
            board,
            [
                Array("XXXXXXO"),
                Array("XXXXXXO"),
                Array("XXXXXXO"),
                Array("XXXXXXO"),
                Array("XXXXXXO"),
                Array("XXXXXXX"),
            ]
        )
    }
}
