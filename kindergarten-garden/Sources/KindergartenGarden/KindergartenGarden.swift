//Solution goes in Sources
import Foundation

enum Plant: Character {
    case violets = "V"
    case clover = "C"
    case radishes = "R"
    case grass = "G"
}

extension String {
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

struct Garden {
    static let defaultChildren = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]
    
    let children: [String]
    var row1: String
    var row2: String
    
    init (_ list: String, children: [String] = defaultChildren) {
        row1 = String(list.split(separator: "\n").first!)
        row2 = String(list.split(separator: "\n").last!)
        self.children = children.sorted()
    }
    
    func plantsForChild(_ name: String) -> [Plant] {
        guard let position = children.firstIndex(of: name) else {
            return []
        }
        
        var ans: [Plant] = []
        let index = 2 * position
        ans.append(Plant(rawValue: row1[index])!)
        ans.append(Plant(rawValue: row1[index+1])!)
        ans.append(Plant(rawValue: row2[index])!)
        ans.append(Plant(rawValue: row2[index+1])!)
        
        return ans
    }
}
