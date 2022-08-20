//Solution goes in Sources
import Foundation

struct ListOps {
    static func append<T>(_ arr1: Array<T>, _ arr2: Array<T>) -> Array<T> {
        var result: Array<T> = arr1
        for el in arr2 {
            result.append(el)
        }
        return result
    }
    
    static func concat<T>(_ arr1: Array<T>...) -> Array<T> {
        var result: Array<T> = []
        for el in arr1 {
            result += el
        }
        return result
    }
    
    static func filter<T>(_ arr1: Array<T>, _ combine: (T) -> Bool) -> Array<T> {
        return arr1.filter(combine)
    }
    
    static func length<T>(_ arr1: Array<T>) -> Int {
        return arr1.count
    }
    
    static func map<T>(_ arr1: Array<T>, _ combine: (T) -> (T)) -> Array<T> {
        return arr1.map(combine)
    }
    
    static func foldLeft<T>(_ arr1: Array<T>, accumulated: T, combine: (T, T) -> T) -> T {
        var result = accumulated
        for el in arr1 {
            result = combine(result, el)
        }
        return result
    }
    
    static func foldRight<T>(_ arr1: Array<T>, accumulated: T, combine: (T, T) -> T) -> T {
        var result = accumulated
        for el in arr1.reversed() {
            result = combine(el, result)
        }
        return result
    }
    
    static func reverse<T>(_ arr1: Array<T>) -> Array<T> {
        return arr1.reversed()
    }
}
