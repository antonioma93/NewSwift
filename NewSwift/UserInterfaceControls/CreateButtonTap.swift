//
//  CreateButtonTap.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct CreateButtonTap: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            Button("Delete", role: .destructive) {
                print("Perform delete")
                print("tapped")
            }
        }
    }
}

struct CreateButtonTap_Previews: PreviewProvider {
    static var previews: some View {
        CreateButtonTap()
    }
}
