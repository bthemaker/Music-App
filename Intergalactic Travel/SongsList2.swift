//
//  SongsList2.swift
//  Intergalactic Travel
//
//  Created by Bruno Garcia on 7/25/21.
//

import AVFoundation
import SwiftUI

var player2: AVAudioPlayer!

struct SongsList2: View {
    let messagePhrase : String
    var body: some View {
        VStack {
            Text(messagePhrase)
                .padding()
            Image("Telepatía Cover")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Button(action: {
                self.playTelapatia()
            }) {
                Text("Play")
            }
            .padding(30)
            Button(action: {
                player2.stop()
            }) {
                Text("Stop")
            }
            .padding(30)
        }
        .navigationBarTitle("Telepatía", displayMode: .inline)
        
    }
    
    
    func playTelapatia() {
        let url2 = Bundle.main.url(forResource: "Telapatia", withExtension: "mp3")
        guard url2 != nil else {
            return
        }
        do {
            player2 = try AVAudioPlayer(contentsOf: url2!)
            player2?.play()
        } catch {
            print("\(error)")
        }
    }
}

struct SongsList2_Previews: PreviewProvider {
    static var previews: some View {
        SongsList2(messagePhrase: "Hello Listener")
    }
}

