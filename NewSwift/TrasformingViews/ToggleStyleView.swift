//
//  ToggleStyle.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(configuration.isOn ? .accentColor : .secondary)
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                    .imageScale(.large)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ToggleStyleView: View {
    @State private var isOn = false
    
    var body: some View {
        Toggle("Switch me", isOn: $isOn)
            .toggleStyle(CheckToggleStyle())
    }
}

struct ToggleStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleStyleView()
    }
}
