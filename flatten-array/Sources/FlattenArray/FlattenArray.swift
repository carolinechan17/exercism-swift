//Solution goes in Sources
import Foundation

func flattenArray<T>(_ array: [Any?]) -> [T] {
    var result: [T] = []
    
    for i in array {
        if let i = i as? T {
            result.append(i)
        }
        if let i = i as? [Any] {
            result.append(contentsOf: flattenArray(i))
        }
    }
    
    return result
}
