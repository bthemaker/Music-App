//
//  SongsList3.swift
//  Intergalactic Travel
//
//  Created by Bruno Garcia on 7/25/21.
//

import AVFoundation
import SwiftUI

var player3: AVAudioPlayer!

struct SongsList3: View {
    let messagePhrase : String
    var body: some View {
        VStack {
            Text(messagePhrase)
                .padding()
            Image("SeeYouAgainCover")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Button(action: {
                self.playSeeYouAgain()
            }) {
                Text("Play")
            }
            .padding(30)
            Button(action: {
                player3.stop()
            }) {
                Text("Stop")
            }
            .padding(30)
        }
        .navigationBarTitle("See You Again", displayMode: .inline)
        
    }
    
    
    func playSeeYouAgain() {
        let url3 = Bundle.main.url(forResource: "SeeYouAgain", withExtension: "mp3")
        guard url3 != nil else {
            return
        }
        do {
            player3 = try AVAudioPlayer(contentsOf: url3!)
            player3?.play()
        } catch {
            print("\(error)")
        }
    }
}

struct SongsList3_Previews: PreviewProvider {
    static var previews: some View {
        SongsList3(messagePhrase: "Hello Listener")
    }
}

