//
//  ViewDismissItself.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct DismissingView1: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button("Dismiss me") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ViewDismissItself: View {
    @State private var showingDetail = false
    
    var body: some View {
        Button("Show Detail") {
            showingDetail = true
        }
        .sheet(isPresented: $showingDetail) {
            DismissingView1()
        }
    }
}

struct ViewDismissItself_Previews: PreviewProvider {
    static var previews: some View {
        ViewDismissItself()
    }
}
