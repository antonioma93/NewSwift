//
//  PopoverView.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct PopoverView: View {
    @State private var showingPopover = false
    
    var body: some View {
        Button("Show menu") {
            showingPopover = true
        }
        .popover(isPresented: $showingPopover) {
            Text("Your content here")
                .font(.headline)
                .padding()
        }
    }
}

struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}
