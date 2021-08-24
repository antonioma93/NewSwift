//
//  AsymmetricTransitions.swift
//  NewSwift
//
//  Created by Massa Antonio on 30/06/21.
//

import SwiftUI

struct AsymmetricTransitions: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            Button("Press to show details") {
                withAnimation {
                    showDetails.toggle()
                }
            }
            
            if showDetails {
                Text("Details here")
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
            }
        }
    }
}

struct AsymmetricTransitions_Previews: PreviewProvider {
    static var previews: some View {
        AsymmetricTransitions()
    }
}
