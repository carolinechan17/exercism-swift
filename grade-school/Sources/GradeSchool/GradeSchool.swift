//Solution goes in Sources
import Foundation

struct GradeSchool {
    var result : [Int: [String]] = [:]
    
    //MARK: To add new students and their grade
    mutating func addStudent(_ name: String, grade: Int) {
        if let _ = result[grade] {
            result[grade]?.append(name)
        } else {
            result[grade] = [name]
        }
    }
    
    //MARK: To return students in specific grade
    func studentsInGrade(_ grade: Int) -> [String] {
        return result[grade] ?? []
    }
    
    //MARK: To get students' data
    var roster : [Int: [String]] {
        if result.isEmpty {
            return [:]
        }
        return result
    }
    
    //MARK: To get students' sorted data
    var sortedRoster : [Int: [String]] {
        var sorted: [Int: [String]] = [:]
        
        for (key, value) in result.sorted(by: {$0.0 < $1.0}) {
            sorted[key] = value
            sorted[key] = sorted[key]?.sorted()
        }
                
        return sorted
    }
}
