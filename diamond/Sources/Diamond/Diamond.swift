//Solution goes in Sources
import Foundation

struct Diamond{
    static func makeDiamond(letter: Character) -> [String] {
        let alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        var ans: [String] = []

        guard let size = alphabet.firstIndex(of: letter) else {
            return []
        }

        for i in 0...size {
            var line = Array(repeating: " ", count: size*2+1)
            line[size-i] = String(alphabet[i])
            line[size+i] = String(alphabet[i])
            ans.append(String(describing: line.joined()))
        }

        ans += ans.dropLast().reversed()
        return ans
    }
}

