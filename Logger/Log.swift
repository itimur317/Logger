import Foundation

public enum Log {
    enum Level: String {
        case info = "Info🔎"
        case warning = "Warning⚠️"
        case error = "Error🚫"
    }
    
    public static func info(
        _ message: @autoclosure () -> String,
        shouldLogContext: Bool = true,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        let log = handleLog(
            level: .info,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: Context(
                file: file,
                function: function,
                line: line
            )
        )
        printWhenDebug(log)
    }
    
    public static func warning(
        _ message: @autoclosure () -> String,
        shouldLogContext: Bool = true,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        let log = handleLog(
            level: .warning,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: Context(
                file: file,
                function: function,
                line: line
            )
        )
        printWhenDebug(log)
    }
    
    public static func error(
        _ message: @autoclosure () -> String,
        shouldLogContext: Bool = true,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        let log = handleLog(
            level: .warning,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: Context(
                file: file,
                function: function,
                line: line
            )
        )
        printWhenDebug(log)
    }
    
    static func handleLog(
        level: Level,
        message: @autoclosure () -> String,
        shouldLogContext: Bool,
        context: Context = Context()
    ) -> String {
        var fullLog: [String] = [level.rawValue, message()]
        if shouldLogContext {
            fullLog.append(context.description)
        }
        
        return fullLog.joined(separator: "\n")
    }
    
    private static func printWhenDebug(_ message: String) {
        #if DEBUG
        print(message)
        #endif
    }
}
