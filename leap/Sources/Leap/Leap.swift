//Solution goes in Sources
import Foundation

struct Year {
    let calendarYear: Int
    
    //MARK: Initializer for Struct Year
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
    
    //MARK: Variable to decide whether the input year is leap year or not
    var isLeapYear: Bool{
        if calendarYear % 4 == 0 {
            if calendarYear % 100 == 0 && calendarYear % 400 != 0 {
                return false
            } else {
                return true
            }
        } else {
            return false
        }
    }
}
