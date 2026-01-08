//
//  CircleImage.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 09.01.2026.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(.circle)
            .overlay {
                Circle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
