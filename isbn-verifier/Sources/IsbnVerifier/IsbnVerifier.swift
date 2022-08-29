//Solution goes in Sources
import Foundation

struct IsbnVerifier {
    static func isValid(_ str: String) -> Bool {
        var temp: String = str
        var product: Int = 0
        
        let removedCharacters: Set<Character> = ["-"]
        temp.removeAll(where: {removedCharacters.contains($0)})
        
        if temp.count != 10 {
            return false
        } else {
            var count: Int = 10
            
            for i in temp {
                switch i {
                case "0":
                    count -= 1
                case "1":
                    product += count
                    count -= 1
                case "2":
                    product += 2 * count
                    count -= 1
                case "3":
                    product += 3 * count
                    count -= 1
                case "4":
                    product += 4 * count
                    count -= 1
                case "5":
                    product += 5 * count
                    count -= 1
                case "6":
                    product += 6 * count
                    count -= 1
                case "7":
                    product += 7 * count
                    count -= 1
                case "8":
                    product += 8 * count
                    count -= 1
                case "9":
                    product += 9 * count
                    count -= 1
                case "X":
                    if temp.last! != "X" {
                        continue
                    }
                    product += 10 * count
                    count -= 1
                default:
                    continue
                }
            }
        }
        
        if product % 11 == 0 {
            return true
        } else {
            return false
        }
    }
}
