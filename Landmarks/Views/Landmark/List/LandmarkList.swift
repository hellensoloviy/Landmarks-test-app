//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 09.01.2026.
//

import SwiftUI

#Preview {
    LandmarkList().environment(ModelData())
}

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData

    @State private var showFavoritesOnly = false
    @State private var isSortedAlphabetically = false

    var filteredData: [Landmark] {
        sortedDataIfNeeded.filter { model in
            (!showFavoritesOnly || model.isFavorite)
        }
    }
    
    var sortedDataIfNeeded: [Landmark] {
        if isSortedAlphabetically {
            return modelData.landmarksSourceData.sorted(by: { $0.name < $1.name })
        } else {
            return modelData.landmarksSourceData
        }
    }

    var body: some View {
        
        NavigationSplitView {
            
            List {
                
                Section("Options") {
                    Toggle(isOn: $showFavoritesOnly) {
                        Text("Favorites only")
                            .bold()
                            .foregroundStyle(.blue)
                    }
                    
                    Toggle(isOn: $isSortedAlphabetically) {
                        Text("Sort by alphabet")
                            .bold()
                            .foregroundStyle(.blue)
                    }
                }

                  
                Section {
                    ForEach(filteredData) { landmark in
                        
                        NavigationLink {
                            LandmarkDetail(landmarkModel: landmark)
                        } label: {
                            LandmarkRow(model: landmark)
                        }
                        
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


