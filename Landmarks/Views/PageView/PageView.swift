//
//  PageView.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 28.01.2026.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var pages: [Page]
    
    var body: some View {
        PageViewController(pages: pages)
            .aspectRatio(3/2, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().featured.map { FeatureCard(model: $0) })
}
