//
//  ContentView.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 06.01.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .bold()
            
            HStack {
                Text("Joshua Tree National Park")
                    .italic()
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
