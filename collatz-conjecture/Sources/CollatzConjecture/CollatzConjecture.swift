//Solution goes in Sources
import Foundation

struct CollatzConjecture {
    enum error: Error {
        case inputTooSmall
    }
    
    static func steps(_ n: Int) throws -> Int {
        var result: Int = 0
        var temp: Int = n
        
        if temp <= 0 {
            throw error.inputTooSmall
        }
        
        while temp != 1 {
            if temp % 2 == 0 {
                temp /= 2
                result += 1
            } else {
                temp = (3 * temp) + 1
                result += 1
            }
        }
        
        return result
    }
}
