//
//  Show&HideView.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct Show_HideView: View {
    @State private var showingAdvancedOptions = false
    @State private var enableLogging = false
    
    var body: some View {
        Form {
            Section {
                Toggle("Show advanced options", isOn: $showingAdvancedOptions.animation())
                
                if showingAdvancedOptions {
                    Toggle("Enable Logging", isOn: $enableLogging)
                }
            }
        }
    }
}

struct Show_HideView_Previews: PreviewProvider {
    static var previews: some View {
        Show_HideView()
    }
}
