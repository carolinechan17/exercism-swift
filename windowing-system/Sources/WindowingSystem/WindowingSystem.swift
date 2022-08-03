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
    
    func move(to position: Position){
        let x: Int = max(0, min(screenSize.width - size.width, position.x))
        let y: Int = max(0, min(screenSize.height - size.height, position.y))
        
        self.position.moveTo(newX: x, newY: y)
    }
    
    func update(title: String){
        self.title = title
    }
    
    func update(text: String?){
        contents = text
    }
    
    func display() -> String {
        var addition : String
        
        if(contents == nil){
            addition = "[This window intentionally left blank]"
        }else{
            addition = contents!
        }
        
        return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(addition)"
    }
}

var mainWindow: Window {
    let window: Window = Window()
    window.update(title: "Main Window")
    window.resize(to: Size(width: 400, height: 300))
    window.move(to: Position(x: 100, y: 100))
    window.update(text: "This is the main window")
    return window
}
