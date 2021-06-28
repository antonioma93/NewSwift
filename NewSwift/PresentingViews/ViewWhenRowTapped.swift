//
//  ViewWhenRowTapped.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct PlayerView: View {
    let name: String
    
    var body: some View {
        Text("Selected player: \(name)")
            .font(.largeTitle)
    }
}

struct ViewWhenRowTapped: View {
    let players = [
    "Roy Kant",
    "Richard Montlaur",
    "Dani Rojas",
    "Jamie Tartt"
    ]
    var body: some View {
        NavigationView {
            List(players, id: \.self) { player in
                NavigationLink(destination: PlayerView(name: player)) {
                    Text(player)
                }
            }
            .navigationTitle("Select a player")
        }
    }
}

struct ViewWhenRowTapped_Previews: PreviewProvider {
    static var previews: some View {
        ViewWhenRowTapped()
    }
}
