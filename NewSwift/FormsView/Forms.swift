//
//  Forms.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//


//MARK: - Working with forms
import SwiftUI

struct Forms: View {
    @State private var enableLogging = false
    @State private var selectedColor = "Red"
    @State private var colors = ["Red", "Green", "Blue"]
    
    var body: some View {
        Form {
            Section(footer: Text("Note: Enabling logging may slow down the app")) {
                Picker("Select a color", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Toggle("Enable Logging", isOn: $enableLogging)
            
            Section {
                Button("Save changes") {
                    //activate theme!
                }
            }
        }
    }
}

struct Forms_Previews: PreviewProvider {
    static var previews: some View {
        Forms()
    }
}
