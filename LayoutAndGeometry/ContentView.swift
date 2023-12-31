//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Eugene on 26/09/2023.
//

import SwiftUI



struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]


    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        Text("Min y #\(geo.frame(in: .global).minY * 0.001)")
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .frame(height: abs(geo.frame(in: .global).midY / 20.0))
                            .background(Color(hue: geo.frame(in: .global).minY * 0.001, saturation: geo.frame(in: .global).minY * 0.002, brightness: geo.frame(in: .global).minY * 0.003))
                            .rotation3DEffect(.degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                            .opacity(geo.frame(in: .global).minY * 0.01 - 1.0 / 2.0)
                            
                    }
                    .frame(height: 40)
                }
            }
        }
    }
    
    func calculateFadeOut() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
