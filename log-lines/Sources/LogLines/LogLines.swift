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
}
