//
//  ExplicitAnimation.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct ExplicitAnimation: View {
    @State private var opacity = 1.0
    
    var body: some View {
        Button("Press here") {
            withAnimation(.linear(duration: 3)) {
                opacity -= 0.2
            }
        }
        .padding()
        .opacity(opacity)
    }
}

struct ExplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimation()
    }
}
