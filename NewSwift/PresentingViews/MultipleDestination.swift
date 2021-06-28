//
//  MultipleDestination.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct MultipleDestination: View {
    @State private var selection: String? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("View A"), tag: "A", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("View B"), tag: "B", selection: $selection) { EmptyView() }
                
                Button("Tap to show A") {
                    selection = "A"
                }
                
                Button("Tap to show B") {
                    selection = "B"
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

struct MultipleDestination_Previews: PreviewProvider {
    static var previews: some View {
        MultipleDestination()
    }
}
