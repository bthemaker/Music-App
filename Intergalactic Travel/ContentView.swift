//
//  ContentView.swift
//  DEFAULT
//
//  Created by Bruno Garcia on 7/25/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("musicNote")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .center)
                NavigationLink("Immaculate - Since99, BasedNas", destination: SongsList1(messagePhrase: "Immaculate - NowSince99, BasedNas"))
                    .padding(10)
                NavigationLink("Telepatía - Kali Uchis", destination: SongsList2(messagePhrase: "Telepatía - Kali Uchis"))
                    .padding(10)
                NavigationLink("See You Again - Tyler, the Creator (feat. Kali Uchis)", destination: SongsList3(messagePhrase: "See You Again - Tyler, the Creator (feat. Kali Uchis)"))
            }
            .navigationBarTitle("List of Songs", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


