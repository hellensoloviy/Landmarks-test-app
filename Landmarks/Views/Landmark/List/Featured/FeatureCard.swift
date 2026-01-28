//
//  FeatureCard.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 28.01.2026.
//

import SwiftUI

struct FeatureCard: View {
    var model: Landmark


    var body: some View {
        model.featureImage?
            .resizable()
            .overlay {
                FeaturedTextOverlay(model: model)
            }
    }
}


#Preview {
    FeatureCard(model: ModelData().featured[0])
        .aspectRatio(3 / 2, contentMode: .fit)
}
