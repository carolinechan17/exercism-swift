//Solution goes in Sources
import Foundation

enum BinarySearchError: Error {
    case unsorted
}

struct BinarySearch {
    let list: [Int]
    var middle: Int
    
    init (_ arr: [Int]) throws {
        if arr != arr.sorted() {
            throw BinarySearchError.unsorted
        } else {
            self.list = arr
            middle = list.count / 2
        }
    }
    
    func searchFor(_ num: Int) -> Int? {
        var max: Int = list.count - 1
        var min: Int = 0
        var temp: Int = middle
        
        while min <= max {
            if num == list[temp] {
                return temp
            } else {
                if num > list[temp] {
                    min = temp + 1
                    temp = (max + min) / 2
                } else {
                    max = temp - 1
                    temp = (max + min) / 2
                }
            }
        }
        return nil
    }
}
