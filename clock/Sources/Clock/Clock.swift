//Solution goes in Sources
import Foundation

//MARK: Equatable protocol to allow comparison between two objects with "==" operator
struct Clock: Equatable, CustomStringConvertible {
    var total: Int
    
    var hours: Int {total / 60}
    var minutes: Int {total % 60}
    
    init(hours: Int, minutes: Int = 0) {
        total = (minutes + hours * 60) % 1440
        if total < 0 {
            total += 1440
        }
    }
    
    var description: String{
        String(format: "%02d:%02d", hours, minutes)
    }
    
    func add(minutes: Int) -> Clock {
        return Clock(hours: 0, minutes: total + minutes)
    }
    
    func subtract(minutes: Int) -> Clock {
        return Clock(hours: 0, minutes: total - minutes)
    }
    
    static func ==(clock1: Clock, clock2: Clock) -> Bool {
        return clock1.total == clock2.total
    }
}
