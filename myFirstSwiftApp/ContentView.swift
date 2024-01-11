//
//  ContentView.swift
//  myFirstSwiftApp
//
//  Created by Alex Le Blanc on 2023-12-15.
//

import SwiftUI


// ContentView BEHAVES like a View
struct ContentView: View {
    
    
    //   Stored/normal propertie
    //    i IS N Int
//    var i: Int
//    var s: String
//    
    
    //    Computed property. computed every time it is ran
    //    some: the var has/can be any type, as long as it behaves like a view
    var body: some View {
        VStack {
            CardRowView()
            CardRowView()
            CardView()
        }
       
        .padding()
        .foregroundColor(Color.brown)
        
    }
}



struct CardRowView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(lineWidth: 5)
                Text("🚵‍♂️")
                    .font(.largeTitle)
                
            } else {
                RoundedRectangle(cornerRadius: 10)
//                    .foregroundColor(.brown)
            }
        })
    }
}





#Preview {
    ContentView()
}
