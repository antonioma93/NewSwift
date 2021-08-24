//
//  AddAndRemoveViews.swift
//  NewSwift
//
//  Created by Massa Antonio on 30/06/21.
//

import SwiftUI

struct AddAndRemoveViews: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            Button("Login") {
                withAnimation {
                    showDetails.toggle()
                }
            }
            
            if showDetails{
                Text("Username")
                    .transition(.slide)
                Text("Password")
                    .transition(.slide)
                Text("Enter")
                    .transition(.slide)
            }
        }
    }
}

struct AddAndRemoveViews_Previews: PreviewProvider {
    static var previews: some View {
        AddAndRemoveViews()
    }
}
