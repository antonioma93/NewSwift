//
//  ColorPaddingArounView.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct ColorPaddingAroundView: View {
    var body: some View {
        Text("Hacking with Swift")
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
    }
}

struct ColorPaddingAroundView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPaddingAroundView()
    }
}
