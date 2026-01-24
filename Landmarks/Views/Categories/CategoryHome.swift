//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 13.01.2026.
//

import SwiftUI

#Preview {
    CategoryHome()
        .environment(ModelData())
}

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    
    @State private var isShowingProfile: Bool = false
    
    var body: some View {
        NavigationSplitView {
            List {
                
                //TODO: - need to fix hadcode here later
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
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    isShowingProfile.toggle()
                } label: {
                    Label("User profile", systemImage: "person.crop.circle")
                }
                .accessibilityLabel("User profile")
            }
            .sheet(isPresented: $isShowingProfile) {
                ProfileHost()
                    .environment(modelData)
            }

        } detail: {
            Text("Select a Landmark")
        }
    }
}


