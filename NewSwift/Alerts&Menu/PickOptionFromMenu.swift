//
//  PickOptionFromMenu.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct PickOptionFromMenu: View {
    @State private var selection = "Red"
    let colors = ["Red🔴", "Green🟢", "Blue🔵", "Black⚫️", "Tartan🟡"]
    
    var body: some View {
        VStack {
            Picker("Select a paint color", selection: $selection) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(MenuPickerStyle())
            Text("Selected color: \(selection)")
        }
    }
}

struct PickOptionFromMenu_Previews: PreviewProvider {
    static var previews: some View {
        PickOptionFromMenu()
    }
}
