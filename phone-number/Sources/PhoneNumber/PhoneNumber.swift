//Solution goes in Sources
import Foundation

struct PhoneNumber {
    var number: String = ""
    let removedCharacters: Set<Character> = ["-", " ", ".", "(", ")"]
    
    init(_ startingNumber: String) {
        number = startingNumber
        number.removeAll(where: {removedCharacters.contains($0)})
        
        if number.first! == "1" {
            number.removeFirst()
            if number.count != 10 {
                number = "0000000000"
            }
        } else {
            if number.count != 10 {
                number = "0000000000"
            }
        }
    }
    
    var areaCode: String {
        let start = number.startIndex
        let end = number.index(number.startIndex, offsetBy: 3)
        let range = start..<end
        return String(number[range])
    }
    
}

extension PhoneNumber: CustomStringConvertible {
    var description: String {
        //first part
        let start1 = number.index(number.startIndex, offsetBy: 3)
        let end1 = number.index(number.startIndex, offsetBy: 6)
        let range1 = start1..<end1
        let part1 = number[range1]
        
        //second part
        let start2 = number.index(number.startIndex, offsetBy: 6)
        let end2 = number.index(number.startIndex, offsetBy: 10)
        let range2 = start2..<end2
        let part2 = number[range2]
        
        return "(\(areaCode)) \(part1)-\(part2)"
    }
}
