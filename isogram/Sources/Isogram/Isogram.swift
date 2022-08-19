//Solution goes in Sources
import Foundation

struct Isogram {
    static func isIsogram(_ str: String) -> Bool {
        //MARK: Remove "-" and " " special characters from string
        var input: String = str
        let removedCharacters: Set<Character> = ["-", " "]
        input.removeAll(where: {removedCharacters.contains($0)})
        
        //MARK: Lowercased the string
        input = input.lowercased()
        
        //MARK: Iteration to check if there's duplicate character
        var check: String = ""
        for char in input {
            if check.contains(char) {
                return false
            }
            check += String(char)
        }
        
        return true
    }
}
