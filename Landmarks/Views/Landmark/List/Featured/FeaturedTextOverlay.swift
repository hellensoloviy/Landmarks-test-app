//
//  FeaturedTextOverlay.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 28.01.2026.
//

import SwiftUI

#Preview {
    FeaturedTextOverlay(model: ModelData().featured[0])
}


struct FeaturedTextOverlay: View {
    var model: Landmark


    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }


    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(model.name)
                    .font(.title)
                    .bold()
                Text(model.park)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}
