//Solution goes in Sources
import Foundation

enum classification {
    case perfect, abundant, deficient
}

struct NumberClassifier{
    let number: Int
    
    init(number: Int) {
        self.number = number
    }
    
    var classification : classification {
        var sum: Int = 0
        
        for i in 1..<number {
            if number % i == 0 {
                sum += i
            }
        }
        
        if sum == number {
            return .perfect
        } else if sum > number {
            return .abundant
        } else {
            return .deficient
        }
    }
}
