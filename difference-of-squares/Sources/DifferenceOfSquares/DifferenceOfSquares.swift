//Solution goes in Sources
import Foundation

struct Squares {
    let num: Int
    
    init(_ num: Int) {
        self.num = num
    }
}

extension Squares {
    var squareOfSum: Int {
        let sum : Int = (num * num + num) / 2
        return sum * sum
    }
    
    var sumOfSquares: Int {
        var sum: Int = 0
        for i in 0...num {
            sum += i * i
        }
        return sum
    }
    
    var differenceOfSquares: Int {
        return squareOfSum - sumOfSquares
    }
}
