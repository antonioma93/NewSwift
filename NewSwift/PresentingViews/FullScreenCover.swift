//
//  FullScreenCover.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button("Dismiss Modal") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct FullScreenCover: View {
    @State private var isPresented = false
    
    var body: some View {
        Button("Present!") {
            isPresented.toggle()
        }
        .fullScreenCover(isPresented: $isPresented, content: ModalView.init)
    }
}

struct FullScreenCover_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCover()
    }
}
