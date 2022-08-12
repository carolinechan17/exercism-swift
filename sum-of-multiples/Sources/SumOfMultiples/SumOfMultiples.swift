//Solution goes in Sources
import Foundation

struct SumOfMultiples {
    
    //MARK: need to add 'static' to be able to call the function like the format in the tests
    static func toLimit(_ range: Int, inMultiples: [Int]) -> Int {
        var sum: Int = 0
        
        if range > 0 {
            for i in 1..<range {
                for num in inMultiples {
                    if num != 0 && i % num == 0 {
                        sum += i
                        break
                    }
                }
            }
        }
        return sum
    }
}
