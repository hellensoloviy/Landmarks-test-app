//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 09.01.2026.
//

import SwiftUI

struct LandmarkRow: View {
    var model: Landmark
    
    var body: some View {
        HStack {
            model.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(model.name)
            Spacer()
            
            if model.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
            
        }
        
    }
}

#Preview {
    LandmarkRow(model: landmarksSourceData[0])
    LandmarkRow(model: landmarksSourceData[1])

}
