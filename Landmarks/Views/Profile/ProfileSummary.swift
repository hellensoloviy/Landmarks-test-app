//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Hellen Soloviy on 24.01.2026.
//

import SwiftUI


#Preview {
    ProfileSummary(profile: .default)
        .environment(ModelData())
}

struct ProfileSummary: View {
    
    @Environment(ModelData.self) var modelData
    
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10){
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    ScrollView(.horizontal){
                        HStack {
                            HikeBadge(name: "First hike")
                            HikeBadge(name: "Earth day")
                                .hueRotation(.degrees(90))
                            HikeBadge(name: "Tenth hike")
                                .hueRotation(.degrees(45))
                                .grayscale(0.5)

                        }
                        .padding(.bottom)

                    }
                }
                
                Spacer()
                Divider()
                
                Text("Recent hikes info".uppercased())
                        .font(.headline)
                        .bold()
                        
                ForEach(modelData.hikes) { obj in
                    VStack(alignment: .leading) {
                        HikeView(hike: obj)
                    }
                }

            }
        }
        .padding()
    }
}

