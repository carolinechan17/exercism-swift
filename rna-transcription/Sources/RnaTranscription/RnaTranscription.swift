// Define the 'Nucleotide' enum, its `init`, and its `complementOfDNA` method
import Foundation

//MARK: To store the error message
enum TranscriptionError: Error {
    case invalidNucleotide(message: String)
}

struct Nucleotide {
    let dna: String
    var isInvalid: String?
    
    init(_ dna: String) {
        self.dna = dna
    }
    
    func complementOfDNA() throws -> String {
        var rna: String = ""
        for char in dna {
            switch char {
            case "G":
                rna += "C"
            case "C":
                rna += "G"
            case "T":
                rna += "A"
            case "A":
                rna += "U"
            default:
                throw TranscriptionError.invalidNucleotide(message: "\(char) is not a valid Nucleotide")
            }
        }
        return rna
    }
}
