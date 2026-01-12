//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 12.01.2026.
//

import SwiftUI

#Preview {
    LandmarkDetail(landmarkModel: ModelData().landmarksSourceData[1]).environment(ModelData())
}


struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData

    var landmarkModel: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarksSourceData.firstIndex(where: { $0.id == landmarkModel.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {

            MapView(coordinate: landmarkModel.locationCoordinate)
                .frame(height: 240)
            
            CircleImage(image: landmarkModel.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmarkModel.name)
                        .font(.title)
                        .foregroundColor(.blue)
                        .bold()
                    FavoriteButton(isSet: $modelData.landmarksSourceData[landmarkIndex].isFavorite)
                }
                
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

