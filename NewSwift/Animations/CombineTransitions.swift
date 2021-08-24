//
//  CombineTransations.swift
//  NewSwift
//
//  Created by Massa Antonio on 30/06/21.
//

import SwiftUI

extension AnyTransition {
    static var moveAndScale: AnyTransition {
        AnyTransition.move(edge: .bottom).combined(with: .scale)
    }
}

struct CombineTransitions: View {
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            Button("Press to show details") {
                withAnimation {
                    showDetail.toggle()
                }
            }
            
            if showDetail {
                Text("Details go here")
                    .transition(.moveAndScale)
            }
        }
    }
}

struct CombineTransitions_Previews: PreviewProvider {
    static var previews: some View {
        CombineTransitions()
    }
}
