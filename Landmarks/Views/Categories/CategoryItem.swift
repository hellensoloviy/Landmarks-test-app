//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 13.01.2026.
//

import SwiftUI

#Preview {
    CategoryItem(model: ModelData().landmarksSourceData[0])
}

struct CategoryItem: View {
    
    var model: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            model.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
                .shadow(radius: 2)
            Text(model.name)
                .font(.caption)
                .foregroundStyle(.brown)
        }
        .padding(.leading, 15)
    }
}


