//

import SwiftUI

struct ContentView: View {
    @StateObject private var planetViewModel = PlanetViewModel()

    @State private var rotation: Double = 0    
    
    var body: some View {
        ZStack {
            
            Color.black
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 80, height: 80)
            
            ForEach(planetViewModel.planets) { planet in
                Circle()
                    .stroke(.gray.opacity(0.5), lineWidth: 1)
                    .frame(width: planet.distance * 2, height: planet.distance * 2)
            }
            
            ForEach(planetViewModel.planets) { planet in
                Circle()
                    .fill(planet.color)
                    .frame(width: planet.size, height: planet.size)
                    .offset(x: planet.distance)
                    .rotationEffect(.degrees(rotation * planet.orbitSpeed))
            }
        }
        .frame(width: 900, height: 600)
        .onAppear() {
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                withAnimation {
                    rotation += 1
                }
            }
        }
        .previewLayout(.fixed(width: 1280, height: 800))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
