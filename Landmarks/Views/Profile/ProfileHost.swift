//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 24.01.2026.
//

import SwiftUI

struct ProfileHost: View {
    
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    
    @State private var draftProfile = Profile.default /// why use default here? 
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }

                
                Spacer()
                EditButton()

            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
            
        }
        .padding()
    }
}

#Preview {
    /*
     Even though this view doesn’t use a property with the @Environment property wrapper, ProfileSummary, a child of this view, does. So without the modifier, the preview fails.
     */
    ProfileHost()
        .environment(ModelData())
}
