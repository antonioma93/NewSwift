//
//  DisableColorImageButton.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct DisableColorImageButton: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("Detail view here")) {
                Image(systemName: "pencil.circle")
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct DisableColorImageButton_Previews: PreviewProvider {
    static var previews: some View {
        DisableColorImageButton()
    }
}
