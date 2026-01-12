//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 09.01.2026.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationSplitView {
            List(landmarksSourceData) { landmark in
                
                NavigationLink {
                    LandmarkDetail(landmarkModel: landmark)
                } label: {
                    LandmarkRow(model: landmark)
                }
                
            }.navigationTitle("Landmarks")
            
        } detail: {
            Text("Select a landmark")
        }
        
        
    }
}

#Preview {
    LandmarkList()
}
