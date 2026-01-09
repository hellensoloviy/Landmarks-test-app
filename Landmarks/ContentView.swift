//
//  ContentView.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 06.01.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .bold()
                
                HStack {
                    Text("Joshua Tree National Park")
                        .italic()
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()
                
            }
            .padding()
            
            Spacer()
    
        }
    }
}

#Preview {
    ContentView()
}
