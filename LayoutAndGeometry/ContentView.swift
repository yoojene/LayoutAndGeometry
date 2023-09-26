//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Eugene on 26/09/2023.
//

import SwiftUI


extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID { // set as a enum rather than a struct as making an instance of this type does not make sense
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
        
        
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self) // helper const
}


struct ContentView: View {
    var body: some View {
     
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@yoojene")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center]}
                Image("lakeland")
                    .resizable()
                    .frame(width: 64, height: 64)
                
            }
            
            VStack {
                Text("Full name:")
                Text("EUGENE CROSS")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center]}
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
