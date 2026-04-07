import XCTest
@testable import CodeTour

final class ErrorHandlingTests: XCTestCase
{
    func testSendReturnsJobSentForAWorkingPrinter() throws
    {
        XCTAssertEqual(try send(job: 1040, toPrinter: "Bi Sheng"), "Job sent")
    }

    func testSendThrowsNoTonerForTheGuidedTourFailureExample()
    {
        XCTAssertThrowsError(try send(job: 1885, toPrinter: "Never Has Toner"))
        {
            error in

            XCTAssertEqual(error as? PrinterError, .noToner)
        }
    }

    func testMultipleCatchBlocksCanHandleSpecificPrinterErrors()
    {
        var output = ""

        do
        {
            let printerResponse = try send(job: 1440, toPrinter: "On Fire")
            output = printerResponse
        }
        catch PrinterError.onFire
        {
            output = "I'll just put this over here, with the rest of the fire."
        }
        catch let printerError as PrinterError
        {
            output = "Printer error: \(printerError)."
        }
        catch
        {
            output = String(describing: error)
        }

        XCTAssertEqual(output, "I'll just put this over here, with the rest of the fire.")
    }

    func testTryQuestionMarkTurnsThrownErrorsIntoNil()
    {
        XCTAssertNil(sendIfPossible(job: 1885, toPrinter: "Never Has Toner"))
    }

    func testFridgeContainsLeavesTheRefrigeratorClosedAfterward()
    {
        var refrigerator = Refrigerator()

        XCTAssertFalse(refrigerator.isOpen)
        XCTAssertFalse(fridgeContains("banana", in: &refrigerator))
        XCTAssertFalse(refrigerator.isOpen)
    }
}
