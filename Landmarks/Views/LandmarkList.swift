//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Olena Solovii AFT on 09.01.2026.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
            LandmarkRow(model: landmarksSourceData[0])
            LandmarkRow(model: landmarksSourceData[1])
        }
    }
}

#Preview {
    LandmarkList()
}
