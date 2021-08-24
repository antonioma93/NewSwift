//
//  CreatePicker.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct CreatePicker: View {
    var colors = ["Red", "Blue", "Green", "Mint"]
    @State private var selectedColor = ""
    
    var body: some View {
        VStack {
            Picker("Please choose a color", selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            Text("You choose \(selectedColor)")
        }
    }
}

struct CreatePicker_Previews: PreviewProvider {
    static var previews: some View {
        CreatePicker()
    }
}
