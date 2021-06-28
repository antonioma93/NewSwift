//
//  PresentNewView.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct PresentNewView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SheetViewTest()
        }
    }
}

struct PresentNewView_Previews: PreviewProvider {
    static var previews: some View {
        PresentNewView()
    }
}
