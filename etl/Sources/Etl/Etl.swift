//Solution goes in Sources
import Foundation

struct ETL {
    static func transform(_ input: [Int: [String]]) -> [String: Int] {
        var dict: [String: Int] = [:]
        var result: [String: Int] = [:]
        
        //MARK: iteration to insert into the dictionary
        for (key, value) in input {
            for i in 0..<value.count {
                dict[value[i].lowercased()] = key
            }
        }
        
        //MARK: iteration to sort the dictionary into a new one
        for (key, value) in dict.sorted(by: {$0.0 < $1.0}) {
            result[key] = value
        }
        
        return result
    }
}
