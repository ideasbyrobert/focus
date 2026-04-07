import XCTest
import Foundation

final class CompileFailureFixturesTests: XCTestCase
{
    func testCompileFailureFixturesReportTheExpectedDiagnostics() throws
    {
        for fixtureURL in try fixtureDirectories()
        {
            let inputURL = fixtureURL.appendingPathComponent("input.swift")
            let expectedURL = fixtureURL.appendingPathComponent("expected.txt")
            let expectedMessage = try String(contentsOf: expectedURL).trimmingCharacters(in: .whitespacesAndNewlines)
            let output = try typecheckFixture(at: inputURL)

            XCTAssertTrue(
                output.contains(expectedMessage),
                "Expected fixture \(fixtureURL.lastPathComponent) to contain diagnostic: \(expectedMessage)\nActual output:\n\(output)"
            )
        }
    }

    private func fixtureDirectories() throws -> [URL]
    {
        let fixturesRoot = try XCTUnwrap(Bundle.module.resourceURL?.appendingPathComponent("Fixtures"))
        let urls = try FileManager.default.contentsOfDirectory(
            at: fixturesRoot,
            includingPropertiesForKeys: nil
        )

        return urls.sorted
        {
            $0.lastPathComponent < $1.lastPathComponent
        }
    }

    private func typecheckFixture(at inputURL: URL) throws -> String
    {
        let buildProductsURL = Bundle(for: Self.self).bundleURL.deletingLastPathComponent()
        let modulesURL = buildProductsURL.appendingPathComponent("Modules")
        let moduleCacheURL = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString)

        try FileManager.default.createDirectory(at: moduleCacheURL, withIntermediateDirectories: true)

        let process = Process()
        let outputPipe = Pipe()

        process.executableURL = URL(fileURLWithPath: "/usr/bin/xcrun")
        process.arguments = [
            "swiftc",
            "-typecheck",
            inputURL.path,
            "-I", buildProductsURL.path,
            "-I", modulesURL.path,
            "-module-cache-path", moduleCacheURL.path,
        ]
        process.standardOutput = outputPipe
        process.standardError = outputPipe

        try process.run()
        process.waitUntilExit()

        let data = outputPipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(decoding: data, as: UTF8.self)

        XCTAssertNotEqual(process.terminationStatus, 0, "Expected fixture \(inputURL.lastPathComponent) to fail type-checking")

        return output
    }
}
