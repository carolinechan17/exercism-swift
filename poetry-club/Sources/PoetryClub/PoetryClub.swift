import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    let strings : [String] = poem.components(separatedBy: "\n")
    return strings
}

func firstLetter(_ line: String) -> Character {
    if let first = line.first{
        return first
    }else{
        return "_"
    }
}

func capitalize(_ phrase: String) -> String {
    return phrase.capitalized
}

func trimFromEnd(_ line: String) -> String {
    return line.trimmingCharacters(in: .whitespaces)
}

func lastLetter(_ line: String) -> Character {
    if let last = line.last{
        return last
    }else{
        return "_"
    }
}

func backDoorPassword(_ phrase: String) -> String {
    let capitalizedPhrase = capitalize(_: phrase)
    return "\(capitalizedPhrase), please"
}

func ithLetter(_ line: String, i: Int) -> Character {
    if(i >= line.count){
        return " "
    }else{
        let char = line[line.index(line.startIndex, offsetBy: i)]
        return char
    }
}

func secretRoomPassword(_ phrase: String) -> String {
    let uppercase : String = phrase.uppercased()
    return "\(uppercase)!"
}
