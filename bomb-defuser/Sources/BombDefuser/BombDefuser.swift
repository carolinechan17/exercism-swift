//let flip: (String, String, String) -> (String, String, String) = TODO: Please define the flip closure
//MARK: Write a closure to flip two wires
let flip = {(a: String, b: String, c: String) -> (String, String, String) in
    let arrayOfWires: [String] = [a, b, c]
    let sortedArrayOfWires: [String] = arrayOfWires.sorted(by: { (s1: String, s2: String) -> Bool in s1 > s2})
    return (sortedArrayOfWires[0], sortedArrayOfWires[1], sortedArrayOfWires[2])
}

//let rotate: (String, String, String) -> (String, String, String) = TODO: Please define the stopAtOne closure


func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
  fatalError("Please implement the makeShuffle(flipper:rotator:) function")
}
