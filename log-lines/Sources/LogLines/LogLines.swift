// TODO: define the 'LogLevel' enum, its `init`, and its `shortFormat` method

import Foundation

//MARK: Create LogLevel enum
enum LogLevel {
    case trace, debug, info, warning, error, fatal, unknown
    
    //MARK: Parse log level with initializer
    init (_ logLine: String) {
        if (logLine as NSString).contains("TRC") {
            self = .trace
        } else if (logLine as NSString).contains("DBG") {
            self = .debug
        } else if (logLine as NSString).contains("INF") {
            self = .info
        } else if (logLine as NSString).contains("WRN") {
            self = .warning
        } else if (logLine as NSString).contains("ERR") {
            self = .error
        } else if (logLine as NSString).contains("FTL") {
            self = .fatal
        } else {
            self = .unknown
        }
    }
    
    //MARK: shortFormat method to shortened the log line
    func shortFormat (message: String) -> String {
        switch self {
        case .trace:
            return "0:\(message)"
        case .debug:
            return "1:\(message)"
        case .info:
            return "4:\(message)"
        case .warning:
            return "5:\(message)"
        case .error:
            return "6:\(message)"
        case .fatal:
            return "7:\(message)"
        case .unknown:
            return "42:\(message)"
        }
    }
}
