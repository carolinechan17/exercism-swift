//Solution goes in Sources
import Foundation

struct Grains {
    //MARK: Enum to initialized error message
    enum GrainsError : Error {
        case inputTooLow(message: String)
        case inputTooHigh(message: String)
    }
    
    //MARK: Function to return the amount of grains in a specific square
    static func square(_ num: Int) throws -> UInt64 {
        if num < 1 {
            throw GrainsError.inputTooLow(message: "Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
        } else if num > 64 {
            throw GrainsError.inputTooHigh(message: "Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
        } else {
            return UInt64(pow(Double(2), Double(num-1)))
        }
    }
}
