//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 09.01.2026.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarksSourceData) { landmark in
            LandmarkRow(model: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
