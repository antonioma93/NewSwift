//
//  MultipleAlerts.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct MultipleAlerts: View {
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    
    var body: some View {
        VStack {
            Button("Show 1") {
                showingAlert1 = true
            }
            .alert(isPresented: $showingAlert1) {
                Alert(title: Text("One"), message: nil, dismissButton: .cancel())
            }
            Spacer()
            Button("Show 2") {
                showingAlert2 = true
            }
            .alert(isPresented: $showingAlert2) {
                Alert(title: Text("Two"), message: nil, dismissButton: .cancel())
            }
        }
    }
}

struct MultipleAlerts_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAlerts()
    }
}
