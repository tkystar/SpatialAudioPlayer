//
//  SpatialAudioPlayerApp.swift
//  SpatialAudioPlayer
//
//  Created by Takuya on 2023/07/11.
//

import SwiftUI

@main
struct SpatialAudioPlayerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
