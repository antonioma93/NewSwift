//
//  CreateSegmentControl.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct CreateSegmentControl: View {
    @State private var favoriteColor = ""
    var colors = ["Red", "Green","Blue"]
    
    var body: some View {
        VStack {
            Picker(selection: $favoriteColor, label: Text("What's your color")) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            Text("Value: \(favoriteColor)")
        }
    }
}

struct CreateSegmentControl_Previews: PreviewProvider {
    static var previews: some View {
        CreateSegmentControl()
    }
}
