//
//  CreateToggleSwitch.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct CreateToggleSwitch: View {
    @State private var showGreeting = false
    @State private var isOn = false
    
    var body: some View {
        VStack {
            Toggle("Filter", isOn: $isOn)
                .toggleStyle(.button)
                .tint(.mint)
            
            Toggle("Show welcome message", isOn: $showGreeting)
                .toggleStyle(SwitchToggleStyle(tint: .red))
            if showGreeting {
                Text("Welcome")
                
            }
        }
    }
}

struct CreateToggleSwitch_Previews: PreviewProvider {
    static var previews: some View {
        CreateToggleSwitch()
    }
}
