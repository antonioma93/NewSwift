//
//  PickersInForms.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct PickersInForms: View {
    @State private var selectedStrength = "Mild"
    let strengths = ["Mild", "Medium", "Nature"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Strength", selection: $selectedStrength) {
                        ForEach(strengths, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                }
            }
            .navigationTitle("Select your cheese")
        }
    }
}

struct PickersInForms_Previews: PreviewProvider {
    static var previews: some View {
        PickersInForms()
    }
}
