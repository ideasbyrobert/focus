public let fridgeContent = ["milk", "eggs", "leftovers"]

public func send(job: Int, toPrinter printerName: String) throws -> String
{
    if printerName == "Never Has Toner"
    {
        throw PrinterError.noToner
    }

    if printerName == "On Fire"
    {
        throw PrinterError.onFire
    }

    return "Job sent"
}

public func sendIfPossible(job: Int, toPrinter printerName: String) -> String?
{
    try? send(job: job, toPrinter: printerName)
}

public func fridgeContains(_ food: String, in refrigerator: inout Refrigerator) -> Bool
{
    refrigerator.contains(food)
}
