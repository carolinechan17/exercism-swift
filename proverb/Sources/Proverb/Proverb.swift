//Solution goes in Sources
import Foundation

extension Array where Element == String {
    func recite() -> String {
        var result: String = ""
        
        for i in 0..<self.count {
            guard i != self.count - 1 else {
                result += "And all for the want of a \(self[0])."
                continue
            }
            result += "For want of a \(self[i]) the \(self[i+1]) was lost.\n"
        }
        
        return result
    }
}
