import XCTest
import Foundation

final class CompileFailureFixturesTheBasicsTests: XCTestCase
{
    func testCompileFailureFixturesReportTheExpectedDiagnostics() throws
    {
        for fixtureURL in try fixtureDirectories()
        {
            let inputURL = fixtureURL.appendingPathComponent("input.swift")
            let expectedURL = fixtureURL.appendingPathComponent("expected.txt")
            let expectedMessage = try String(contentsOf: expectedURL).trimmingCharacters(in: .whitespacesAndNewlines)
            let output = try runFixture(at: inputURL)

            XCTAssertTrue(
                output.contains(expectedMessage),
                "Expected fixture \(fixtureURL.lastPathComponent) to contain diagnostic: \(expectedMessage)\nActual output:\n\(output)"
            )
        }
    }

    private func fixtureDirectories() throws -> [URL]
    {
        let resourceRoot = try XCTUnwrap(Bundle.module.resourceURL)
        let candidates = [
            resourceRoot.appendingPathComponent("_support/Fixtures"),
            resourceRoot.appendingPathComponent("Fixtures"),
        ]
        let fixturesRoot = try XCTUnwrap(
            candidates.first
            {
                FileManager.default.fileExists(atPath: $0.path)
            }
        )
        let urls = try FileManager.default.contentsOfDirectory(
            at: fixturesRoot,
            includingPropertiesForKeys: nil
        )

        return urls.sorted
        {
            $0.lastPathComponent < $1.lastPathComponent
        }
    }

    private func runFixture(at inputURL: URL) throws -> String
    {
        let process = Process()
        let outputPipe = Pipe()

        process.executableURL = URL(fileURLWithPath: "/usr/bin/xcrun")
        process.arguments = [
            "swift",
            inputURL.path,
        ]
        process.standardOutput = outputPipe
        process.standardError = outputPipe

        try process.run()
        process.waitUntilExit()

        let data = outputPipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(decoding: data, as: UTF8.self)

        XCTAssertNotEqual(process.terminationStatus, 0, "Expected fixture \(inputURL.lastPathComponent) to fail")

        return output
    }
}
