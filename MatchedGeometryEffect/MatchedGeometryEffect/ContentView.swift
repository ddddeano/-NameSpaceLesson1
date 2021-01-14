//
//  ContentView.swift
//  MatchedGeometryEffect
//
//  Created by Daniel Watson on 14/01/2021.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var animation
    
    @State private var isFlipped = false
    
    var body: some View {
        VStack {
            if isFlipped {
                Circle()
                    .fill(Color.red)
                    .frame(width: 44, height: 44)
                    .matchedGeometryEffect(id: "Circle", in: animation)
                Text("Teylor")
                    .font(.headline)
                    .matchedGeometryEffect(id: "Text", in: animation)
            } else {
                Text("Teylor")
                    .font(.headline)
                    .matchedGeometryEffect(id: "Text", in: animation)
                Circle()
                    .fill(Color.red)
                    .frame(width: 44, height: 44)
                    .matchedGeometryEffect(id: "Circle", in: animation)

            }
        }
        .onTapGesture {
            withAnimation {
                self.isFlipped.toggle()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
