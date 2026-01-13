//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 13.01.2026.
//

import SwiftUI

#Preview {
    CategoryHome()
        .environment(ModelData())
}

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                modelData.featured[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                
            }
            .navigationTitle("Featured")

        } detail: {
            Text("Select a Landmark")
        }
    }
}


