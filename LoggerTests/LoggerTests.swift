import XCTest
@testable import Logger

class TLoggerTests: XCTestCase {

    func testWithContext() throws {
        let handledLog = Log.handleLog(
            level: .info,
            message: "test message",
            shouldLogContext: true,
            context: Context(
                file: "test file",
                function: "test function",
                line: 10
            )
        )

        XCTAssertEqual(
            handledLog,
            """
            \(Log.Level.info.rawValue)
            test message
            test file: test function: 10
            """
        )
    }
    
    func testWithoutContext() throws {
        let handledLog = Log.handleLog(
            level: .error,
            message: "test message",
            shouldLogContext: false
        )
        
        XCTAssertEqual(
            handledLog,
            """
            \(Log.Level.error.rawValue)
            test message
            """
        )
    }
}
