//
//  ProgrammaticNavigation.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct ProgrammaticNavigation: View {
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView) { EmptyView() }
                
                Button("Tap to show detail") {
                    isShowingDetailView = true
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

struct ProgrammaticNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammaticNavigation()
    }
}
