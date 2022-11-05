struct Context {
    private let file: String
    private let function: String
    private let line: Int
    
    var description: String {
        return "\(extractFileName(from: file)): \(function): \(line)"
    }
    
    init(
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        self.file = file
        self.function = function
        self.line = line
    }
    
    private func extractFileName(from path: String) -> String {
        return path.components(separatedBy: "/").last ?? ""
    }
}
