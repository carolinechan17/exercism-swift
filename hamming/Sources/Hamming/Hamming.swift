//Solution goes in Sources
import Foundation

struct Hamming {
    static func compute(_ dna: String, against: String) -> Int? {
        let length: Int = dna.count
        if dna.count == against.count {
            if dna == "" && against == "" {
                return 0
            }
            
            var count: Int = 0
            
            for i in 0..<length {
                if dna[dna.index(dna.startIndex, offsetBy: i)] != against[against.index(against.startIndex, offsetBy: i)] {
                    count += 1
                }
            }
            return count
        } else {
            return nil
        }
    }
}
