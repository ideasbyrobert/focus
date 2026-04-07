import Foundation
import Darwin

struct StandardOutputCapture
{
    func capture(_ body: () async throws -> Void) async throws -> String
    {
        fflush(stdout)

        let pipe = Pipe()
        let originalStandardOutput = dup(STDOUT_FILENO)
        var restoredStandardOutput = false

        dup2(pipe.fileHandleForWriting.fileDescriptor, STDOUT_FILENO)

        defer
        {
            if !restoredStandardOutput
            {
                fflush(stdout)
                dup2(originalStandardOutput, STDOUT_FILENO)
                close(originalStandardOutput)
            }
        }

        try await body()

        fflush(stdout)
        dup2(originalStandardOutput, STDOUT_FILENO)
        close(originalStandardOutput)
        restoredStandardOutput = true
        pipe.fileHandleForWriting.closeFile()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()

        return String(decoding: data, as: UTF8.self)
    }
}
