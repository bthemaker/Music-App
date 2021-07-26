//
//  SongsList1.swift
//  Intergalactic Travel
//
//  Created by Bruno Garcia on 7/25/21.
//

//
//  ContentView.swift
//  DEFAULT
//
//  Created by Bruno Garcia on 7/25/21.
//
import AVFoundation
import SwiftUI

var player: AVAudioPlayer!

struct SongsList1: View {
    let messagePhrase : String
    var body: some View {
        VStack {
            Text(messagePhrase)
                .padding()
            Image("ImmaculateCover")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Button(action: {
                self.playImmaculate()
            }) {
                Text("Play")
            }
            .padding(30)
            Button(action: {
                player.stop()
            }) {
                Text("Stop")
            }
            .padding(30)
        }
        .navigationBarTitle("Immaculate", displayMode: .inline)
        
    }
    
    
    func playImmaculate() {
        let url = Bundle.main.url(forResource: "ImmaculateSound", withExtension: "mp3")
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("\(error)")
        }
    }
}

struct SongsList1_Previews: PreviewProvider {
    static var previews: some View {
        SongsList1(messagePhrase: "Hello Listener")
    }
}
