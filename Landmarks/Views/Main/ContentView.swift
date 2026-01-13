//
//  ContentView.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 06.01.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTab: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $currentTab) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
       
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
