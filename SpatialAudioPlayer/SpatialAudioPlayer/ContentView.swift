//
//  ContentView.swift
//  SpatialAudioPlayer
//
//  Created by Takuya on 2023/07/11.
//
import Swift
import SwiftUI
import RealityKit
import RealityKitContent
import AVFoundation

let musicData = NSDataAsset(name: "bgm01")!.data

private var musicPlayer: AVAudioPlayer!


struct ContentView: View {
    
    @State var isPlay = false
    @State var showImmersiveSpace = false
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    
    private func playSound(){
        do{
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            if isPlay {
                isPlay = false
                musicPlayer.pause()
            } else {
                isPlay = true
                musicPlayer.play()
            }
        } catch {
            print("音の再生に失敗しました。")
        }
    }
    
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
        
        
            Button(action: {
                    playSound()//追加④　メソッド発動
            }) {
                if isPlay {
                    Text("Pause")
                        .font(.title)
                } else {
                    Text("Play")
                        .font(.title)
                }
            }
        }
        
    }
    
}



#Preview {
    ContentView()
}



