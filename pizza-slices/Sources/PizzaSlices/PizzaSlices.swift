import Foundation
func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let double = diameter else {return nil}
    guard let int = slices else {return nil}
    if(double >= 0 && int > 0){
        let radius : Double = double/2
        return radius * radius * Double.pi / Double(int)
    }
    return nil
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    let optionalAreaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let optionalAreaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    
    var isNilA : Bool = false
    var isNilB : Bool = false
    
    if optionalAreaA != nil {
        isNilA = true
    }
    if optionalAreaB != nil {
        isNilB = true
    }
    
    if(isNilA == false || isNilB == false){
        if(isNilA == false && isNilB == false){
            return "Neither slice is bigger"
        }else if(isNilA == false){
            return "Slice B is bigger"
        }else{
            return "Slice A is bigger"
        }
    }else{
        if(optionalAreaA! > optionalAreaB!){
            return "Slice A is bigger"
        }else if(optionalAreaB! > optionalAreaA!){
            return "Slice B is bigger"
        }else{
            return "Neither slice is bigger"
        }
    }
}
