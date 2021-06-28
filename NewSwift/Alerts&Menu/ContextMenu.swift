//
//  ContextMenu.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
        Text("Options")
            .contextMenu {
                Button {
                    print("Change country setting")
                } label: {
                    Label("Choose country", systemImage: "globe")
                }
                
                Button {
                    print("Enable geolocation")
                } label: {
                    Label("Detect Location", systemImage: "location.circle")
                }
            }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
