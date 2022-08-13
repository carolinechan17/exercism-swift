//Solution goes in Sources
import Foundation

extension Array {
    //MARK: <T> is generic functions that can work with any type
    //MARK: Element is a type that provides the sequence's iteration interface and encapsulates its iteration state
    func accumulate<T>(_ function: (Element) -> T) -> [T] {
        var result: [T] = []
        for element in self {
            result.append(function(element))
        }
        
        return result
    }
}
