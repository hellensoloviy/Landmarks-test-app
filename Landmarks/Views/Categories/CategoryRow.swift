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
                .padding(.top, 15)
                .padding(.bottom, 0)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(items) { item in
                        NavigationLink {
                            LandmarkDetail(landmarkModel: item)
                        } label: {
                            CategoryItem(model: item)
                        }
                        
                    }
                }
            }
            .frame(height: 185)
            .padding(.bottom, 20)
            .padding(.leading, 10)
        }
        
    }
}


