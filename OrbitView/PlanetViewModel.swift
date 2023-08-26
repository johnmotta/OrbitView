//

import Foundation

class PlanetViewModel: ObservableObject {
    let planets = [
        Planet(id: "Mercury", size: 10, distance: 60, color: .gray, orbitSpeed: 4.1),
        Planet(id: "Venus", size: 20, distance: 100, color: .orange, orbitSpeed: 1.6),
        Planet(id: "Earth", size: 22, distance: 150, color: .cyan, orbitSpeed: 1.0),
        Planet(id: "Mars", size: 12, distance: 200, color: .red, orbitSpeed: 0.5),
        Planet(id: "Jupiter", size: 50, distance: 260, color: .orange, orbitSpeed: 0.08),
        Planet(id: "Saturn", size: 42, distance: 320, color: .yellow, orbitSpeed: 0.03),
        Planet(id: "Uranus", size: 35, distance: 380, color: .green, orbitSpeed: 0.01),
        Planet(id: "Neptune", size: 32, distance: 440, color: .blue, orbitSpeed: 0.006)
    ]

}
