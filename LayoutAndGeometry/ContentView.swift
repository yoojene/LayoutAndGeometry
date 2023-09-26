//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Eugene on 26/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        VStack(alignment: .leading) {
            Text("Hello, world")
                .alignmentGuide(.leading) { d in
                    d[.trailing]
                }
//                .offset(x: -100, y: 0)
            Text("This is a longer line of text")
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
