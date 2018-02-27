import Foundation
struct SpaceAge {
    
    private let secondsInAEarthYear: Double = 31_557_600
    
    private enum orbitalPeriodsInEarthYears: Double {
        case mercury = 0.2408467
        case venus   = 0.61519726
        case mars    = 1.8808158
        case jupiter = 11.862615
        case saturn  = 29.447498
        case uranus  = 84.016846
        case neptune = 164.79132
    }
    
    let seconds: Double
    
    let onMercury: Double
    let onVenus:   Double
    let onEarth:   Double
    let onMars:    Double
    let onJupiter: Double
    let onSaturn:  Double
    let onUranus:  Double
    let onNeptune: Double
    
    init(_ seconds: Double) {
        self.seconds = seconds
        let earthSeconds = (self.seconds / secondsInAEarthYear)
        onEarth   = earthSeconds.truncate(places: 2)
        onMercury = (earthSeconds / orbitalPeriodsInEarthYears.mercury.rawValue).truncate(places: 2)
        onVenus   = (earthSeconds / orbitalPeriodsInEarthYears.venus.rawValue).truncate(places: 2)
        onMars    = (earthSeconds / orbitalPeriodsInEarthYears.mars.rawValue).truncate(places: 2)
        onJupiter = (earthSeconds / orbitalPeriodsInEarthYears.jupiter.rawValue).truncate(places: 2)
        onSaturn  = (earthSeconds / orbitalPeriodsInEarthYears.saturn.rawValue).truncate(places: 2)
        onUranus  = (earthSeconds / orbitalPeriodsInEarthYears.uranus.rawValue).truncate(places: 2)
        onNeptune = (earthSeconds / orbitalPeriodsInEarthYears.neptune.rawValue).truncate(places: 2)
    }
}

extension Double {
    func truncate(places : Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
