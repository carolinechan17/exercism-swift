//Solution goes in Sources
import Foundation

enum ErrorCodon: Error {
    case invalidCodon
}

struct ProteinTranslation {
    static func translationOfCodon(_ codon: String) throws -> String {
        switch codon {
        case "AUG":
            return "Methionine"
        case "UUU", "UUC":
            return "Phenylalanine"
        case "UUA", "UUG":
            return "Leucine"
        case "UCU", "UCC", "UCA", "UCG":
            return "Serine"
        case "UAU", "UAC":
            return "Tyrosine"
        case "UGU", "UGC":
            return "Cysteine"
        case "UGG":
            return "Tryptophan"
        case "UAA", "UAG", "UGA":
            return "STOP"
        default:
            throw ErrorCodon.invalidCodon
        }
    }
    
    static func translationOfRNA(_ rna: String) throws -> [String]{
        var ans: [String] = []
        var temp = rna[...]
        
        while temp.count >= 3 {
            let translate = try translationOfCodon(String(temp.prefix(3)))
            switch translate {
            case "STOP":
                return ans
            case let codon:
                ans.append(codon)
                temp.removeFirst(3)
            }
        }
        return ans
    }
}
