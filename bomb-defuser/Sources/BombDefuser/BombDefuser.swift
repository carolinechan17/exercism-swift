//let flip: (String, String, String) -> (String, String, String) = TODO: Please define the flip closure
//MARK: Write a closure to flip two wires
import Foundation
let flip = {(_ wires: (String, String, String)) -> (String, String, String) in
    (wires.1, wires.0, wires.2)
}

//let rotate: (String, String, String) -> (String, String, String) = TODO: Please define the stopAtOne closure
//MARK: Write a closure to rotate the wires
let rotate = {(_ wires: (String, String, String)) -> (String, String, String) in
    (wires.1, wires.2, wires.0)
}

//MARK: Implement a wire shuffle generator
func makeShuffle(
    flipper: @escaping ((String, String, String)) -> (String, String, String),
    rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
    {(id, item) in
        var str: String = String(id, radix: 2)
        var item = item
        
        while str.count < 8 {
            str = "0" + str
        }
        
        for _ in 0...7 {
            if str.last! == "0" {
                item = flipper(item)
            } else {
                item = rotator(item)
            }
            str.removeLast()
        }
        
        return item
    }
}
