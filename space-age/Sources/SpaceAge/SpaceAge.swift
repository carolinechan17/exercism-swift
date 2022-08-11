//Solution goes in Sources
import Foundation

enum Age : Double {
    case Mercury = 0.2408467
    case Venus = 0.61519726
    case Mars = 1.8808158
    case Jupiter = 11.862615
    case Saturn = 29.447498
    case Uranus = 84.016846
    case Neptune = 164.79132
}

struct SpaceAge {
    var seconds: Int
    var onEarth: Double
    var onMercury: Double {
        onEarth / Age.Mercury.rawValue
    }
    var onVenus: Double {
        onEarth / Age.Venus.rawValue
    }
    var onMars: Double {
        onEarth / Age.Mars.rawValue
    }
    var onJupiter: Double {
        onEarth / Age.Jupiter.rawValue
    }
    var onSaturn: Double {
        onEarth / Age.Saturn.rawValue
    }
    var onUranus: Double {
        onEarth / Age.Uranus.rawValue
    }
    var onNeptune: Double {
        onEarth / Age.Neptune.rawValue
    }
    
    init(_ seconds: Int) {
        self.seconds = seconds
        onEarth = Double(seconds) / Double(31557600) 
    }
}
