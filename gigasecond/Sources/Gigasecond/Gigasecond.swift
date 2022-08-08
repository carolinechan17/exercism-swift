//Solution goes in Sources
import Foundation

struct Gigasecond {
    let gigaSecond = 1e9
    let dateFormatter = DateFormatter()
    var result : Date
    
    init?(from: String) {
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "en_US_POSSIX")
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        let time = dateFormatter.date(from: from)
        result = time!.addingTimeInterval(gigaSecond)
    }
    
    var description : String {
        return dateFormatter.string(from: result)
    }
}
