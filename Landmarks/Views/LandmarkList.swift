//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 09.01.2026.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredData: [Landmark] {
        landmarksSourceData.filter { model in
            (!showFavoritesOnly || model.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationSplitView {
            
            List {
                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                        .bold()
                        .foregroundStyle(.blue)
                }
                
                ForEach(filteredData) { landmark in
                    
                    NavigationLink {
                        LandmarkDetail(landmarkModel: landmark)
                    } label: {
                        LandmarkRow(model: landmark)
                    }
                    
                }

            }
            .navigationTitle("Landmarks")
            .animation(.default, value: filteredData)
            
        } detail: {
            Text("Select a landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
}
