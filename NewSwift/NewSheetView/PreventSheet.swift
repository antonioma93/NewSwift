//
//  PreventSheet.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//

//MARK: - How to prevent a sheet from a being dismissed with a swipe

import SwiftUI

struct ExampleSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var termsAccepted = false
    var body: some View {
        VStack {
            Text("Terms and conditions")
                .font(.title)
            Text("Lots of legalese here.")
            Toggle("Accept", isOn: $termsAccepted)
            
            Button("Dismiss", action: close)
        }
        .padding()
        .interactiveDismissDisabled(!termsAccepted)
    }
    
    func close() {
        presentationMode.wrappedValue.dismiss()
    }
}

struct PreventSheet: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet, content: ExampleSheet.init)
    }

}

struct PreventSheet_Previews: PreviewProvider {
    static var previews: some View {
        PreventSheet().preferredColorScheme(.dark) //Darkmode on UI
    }
}
