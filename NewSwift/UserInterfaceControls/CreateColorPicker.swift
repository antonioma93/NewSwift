//
//  ColorPicker.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct CreateColorPicker: View {
    @State private var bgColor = Color.red
    
    var body: some View {
        VStack {
            ColorPicker("Set the background color", selection: $bgColor, supportsOpacity: false)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }
}

struct CreateColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        CreateColorPicker()
    }
}
