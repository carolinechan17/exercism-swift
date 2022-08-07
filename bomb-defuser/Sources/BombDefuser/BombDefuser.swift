//let flip: (String, String, String) -> (String, String, String) = TODO: Please define the flip closure
//MARK: Write a closure to flip two wires

import Foundation
let flip = {(a: String, b: String, c: String) -> (String, String, String) in
    (b, a, c)
}

//let rotate: (String, String, String) -> (String, String, String) = TODO: Please define the stopAtOne closure
//MARK: Write a closure to rotate the wires
let rotate = {(a: String, b: String, c: String) -> (String, String, String) in
    (b, c, a)
}


func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
  fatalError("Please implement the makeShuffle(flipper:rotator:) function")
}
