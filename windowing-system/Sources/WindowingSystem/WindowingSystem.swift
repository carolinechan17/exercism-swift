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
class Window {
    var title: String = "New Window"
    var screenSize: Size = Size(width: 800, height: 600)
    var size: Size = Size()
    var position: Position = Position()
    var contents: String? = nil
    
    func resize(to size: Size){
        let width: Int = max(1, min(screenSize.width - position.x, size.width))
        let height: Int = max(1, min(screenSize.height - position.y, size.height))
        
        self.size.resize(newWidth: width, newHeight: height)
    }
    
    
}
