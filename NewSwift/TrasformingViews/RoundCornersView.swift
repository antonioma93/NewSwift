//
//  RoundCornersView.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct RoundCornersView: View {
    var body: some View {
        Text("Round Me")
            .padding()
            .background(Color.red)
            .clipShape(Capsule())
    }
}

struct RoundCornersView_Previews: PreviewProvider {
    static var previews: some View {
        RoundCornersView()
    }
}
