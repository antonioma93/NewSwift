//
//  HoveringOverAView.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct HoveringOverAView: View {
    @State private var overText = false
    var body: some View {
        Text("Tap me")
            .font(.largeTitle)
            .hoverEffect(.lift)
            .onTapGesture {
                print("Text tapped")
            }

    }
}

struct HoveringOverAView_Previews: PreviewProvider {
    static var previews: some View {
        HoveringOverAView()
    }
}
