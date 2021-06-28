//
//  ButtonStyle.swift
//  NewSwift
//
//  Created by Massa Antonio on 25/06/21.
//

import SwiftUI

struct ButtonStyle: View {
    var body: some View {
        VStack {
            Button("Plain", role: .none, action: {})
                .buttonStyle(PlainButtonStyle())
            
            Button("Automatic", role: .none, action: {})
                .buttonStyle(.automatic)
            
            Button("Log out", role: .cancel, action: {})
                .buttonStyle(BorderedButtonStyle())
                .tint(.yellow)
            
            Button("Cancel", role: .cancel, action: {})
                .buttonStyle(.borderless)
                .controlSize(.small)
                .tint(.red)
            
            
            Button("Delete", role: .destructive, action: {})
                .buttonStyle(.bordered)
                .controlSize(.regular)
            
            Button(role: .destructive, action: {}, label: {
                Text("Exit").frame(maxWidth: .infinity)
            })
                .buttonStyle(.bordered)
                .controlSize(.large)
                .controlProminence(.increased)
            
            Button(role: .destructive, action: {}, label: {
                Text("Shape").frame(maxWidth: .infinity)
            })
                .buttonStyle(BorderedButtonStyle(shape: .capsule))
                .controlSize(.large)
                .controlProminence(.increased)
                .tint(.blue)
        }
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle()
    }
}
