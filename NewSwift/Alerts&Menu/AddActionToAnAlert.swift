//
//  AddActionToAnAlert.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct AddActionToAnAlert: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Are you sure you want to delete this"),
                  message: Text("You cannot come back"),
                  primaryButton: .destructive(Text("Delete")) {
                print("Deleting...")
            },
                  secondaryButton: .cancel()
            )
        }
    }
}

struct AddActionToAnAlert_Previews: PreviewProvider {
    static var previews: some View {
        AddActionToAnAlert()
    }
}
