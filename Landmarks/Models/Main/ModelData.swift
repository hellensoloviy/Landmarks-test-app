//
//  ModelData.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 09.01.2026.
//

import Foundation
import SwiftUI

@Observable class ModelData {
    var landmarksSourceData: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    var pfofile: Profile = Profile.default

    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarksSourceData,
            by: { $0.category.rawValue }
        )
    }
    
    var featured: [Landmark] {
        landmarksSourceData.filter { $0.isFeatured }
    }
    
}


func load<T: Decodable>(_ fileName: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("🔴 Couldn't find \(fileName) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("🔴 Couldn't load \(fileName) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("🔴 Couldn't parse \(fileName) as \(T.self):\n\(error)")
    }
}
