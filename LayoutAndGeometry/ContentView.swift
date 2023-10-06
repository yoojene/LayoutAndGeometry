//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Eugene on 26/09/2023.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        Text("Hello. world!")
            .offset(x: 100, y: 100) // offset is not changing position of Text, merely rendering it elsewhere
            .background(.red) // background still working on original position
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
