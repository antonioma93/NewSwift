//
//  ActionSheet.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct ActionSheet: View {
    @State private var showingOptions = false
    @State private var selection = "None"
    
    var body: some View {
        VStack {
            Text(selection)
            
            Button("Confirm paint color") {
                showingOptions = true
            }
            .confirmationDialog("Select a color",
                                isPresented: $showingOptions,
                                titleVisibility: .visible) {
                ForEach(["Red🔴", "Green🟢", "Blue🔵"], id: \.self) { color in
                    Button(color) {
                        selection = color
                    }
                }
            }
        }
    }
}

struct ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet()
    }
}
