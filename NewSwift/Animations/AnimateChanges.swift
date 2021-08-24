//
//  AnimateChanges.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct AnimateChanges: View {
    @State private var showingWelcome = false
    
    var body: some View {
        VStack {
            Toggle("Toggle label", isOn: $showingWelcome.animation(.spring()))
            
            if showingWelcome {
                Text("Hello World")
            }
        }
    }
}

struct AnimateChanges_Previews: PreviewProvider {
    static var previews: some View {
        AnimateChanges()
    }
}
