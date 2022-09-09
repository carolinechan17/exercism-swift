//Solution goes in Sources
import Foundation

struct Scrabble {
    let str: String?
    
    init(_ str: String?) {
        self.str = str?.uppercased()
    }
    
    static func score(_ str1: String?) -> Int {
        var result: Int = 0
        
        guard let exist = str1?.uppercased() else {
            return 0
        }
        
        for i in exist {
            switch i {
            case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T": result += 1
            case "D", "G": result += 2
            case "B", "C", "M", "P": result += 3
            case "F", "H", "V", "W", "Y": result += 4
            case "K": result += 5
            case "J", "X": result += 8
            case "Q", "Z": result += 10
            default: continue
            }
        }
        
        return result
    }
    
    var score: Int {
        var result: Int = 0
        
        guard let exist = str else {
            return 0
        }
        
        for i in exist {
            switch i {
            case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T": result += 1
            case "D", "G": result += 2
            case "B", "C", "M", "P": result += 3
            case "F", "H", "V", "W", "Y": result += 4
            case "K": result += 5
            case "J", "X": result += 8
            case "Q", "Z": result += 10
            default: continue
            }
        }
        
        return result
    }
}
