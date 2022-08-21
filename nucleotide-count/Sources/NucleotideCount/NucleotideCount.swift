//Solution goes in Sources
import Foundation

class DNA {
    let strand: String
    
    init?(strand: String) {
        var temp: String = strand.uppercased()
        let checkCharacters: Set<Character> = ["A", "C", "G", "T"]
        temp.removeAll(where: {checkCharacters.contains($0)})
        
        if temp.isEmpty {
            self.strand = strand
        } else {
            return nil
        }
    }
    
    func count(_ char: Character) -> Int {
        var count: Int = 0
        
        for el in strand {
            if el == char {
                count += 1
            }
        }
        return count
    }
    
    func counts() -> [String: Int] {
        var result: [String: Int] = ["A": 0, "T": 0, "C": 0, "G": 0]
        
        for el in strand {
            switch el {
            case "A":
                result["A"]! += 1
            case "T":
                result["T"]! += 1
            case "C":
                result["C"]! += 1
            case "G":
                result["G"]! += 1
            default:
                continue
            }
        }
        return result
    }
}
