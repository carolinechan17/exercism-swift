// TODO: Define the Position struct
struct Position {
    var x: Int = 0
    var y: Int = 0
    
    mutating func moveTo(newX: Int, newY: Int){
        x = newX
        y = newY
    }
}

// TODO: Define the Size struct
struct Size {
    var width: Int = 80
    var height: Int = 60
    
    mutating func resize(newWidth: Int, newHeight: Int){
        width = newWidth
        height = newHeight
    }
}

// TODO: Define the Window class
