//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 12.01.2026.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmarkModel: Landmark
    
    var body: some View {
        ScrollView {

            MapView(coordinate: landmarkModel.locationCoordinate)
                .frame(height: 240)
            
            CircleImage(image: landmarkModel.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmarkModel.name)
                    .font(.title)
                    .foregroundColor(.blue)
                    .bold()
                
                HStack {
                    Text(landmarkModel.park)
                    Spacer()
                    Text(landmarkModel.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .italic()

                Divider()
                
                Text("About: \(landmarkModel.name)")
                    .font(.title2)
                Text(landmarkModel.description)
                
            }
            .padding()
                
        }
        .navigationTitle(landmarkModel.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmarkModel: landmarksSourceData[1])
}
