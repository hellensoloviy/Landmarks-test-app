//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 06.01.2026.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
    
}
