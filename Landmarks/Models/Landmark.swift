//
//  Landmark.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 09.01.2026.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable {
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    
    //MARK: - private
    
    private var imageName: String
    private var coordinates: Coordinates

}
