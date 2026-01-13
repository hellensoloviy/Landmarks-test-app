//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 13.01.2026.
//

import SwiftUI

#Preview {
    let landmarks = ModelData().landmarksSourceData
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(4))
    )
}

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 2) {
                    ForEach(items) { item in
                        CategoryItem(model: item)
                    }
                }
            }
            .frame(height: 185)
        }
        
    }
}


