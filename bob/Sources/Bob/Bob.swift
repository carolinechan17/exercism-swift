//Solution goes in Sources
import Foundation

struct Bob {
    static func hey(_ input: String) -> String {
        //MARK: To remove special characters (e.g , and .)
        var str: String = input
        let removedCharacters: Set<Character> = [",", "."]
        str.removeAll(where: {removedCharacters.contains($0)})
        
        //MARK: To remove blank space from number only string
        if !str.isBlank {
            let blankSpace: String = " "
            str.removeAll(where: {blankSpace.contains($0)})
        }
        
        
        if str.isBlank {
            return "Fine. Be that way!"
        } else if str == str.uppercased() {
            var isQuestion: Bool = false
            if str.last == "?" {
                isQuestion = true
                str.removeLast()
            }
            
            if str.isNumber {
                if isQuestion {
                    return "Sure."
                }
                return "Whatever."
            }
            return "Whoa, chill out!"
        } else {
            if str.last == "?" {
                return "Sure."
            } else {
                return "Whatever."
            }
        }
    }
}

extension String {
    //MARK: To check if string contains only whitespace
    var isBlank: Bool {
        return allSatisfy({ $0.isWhitespace })
    }
    
    //MARK: To check if string contains only number
    var isNumber: Bool {
        guard !self.isEmpty else { return false }
        return !self.contains { Int(String($0)) == nil }
      }
}
