//
//  SpringAnimation.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct SpringAnimation: View {
    @State private var angle: Double = 0
    
    var body: some View {
        Button("Press here") {
            angle += 45
        }
        .padding()
        .rotationEffect(.degrees(angle))
        .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 10), value: angle)
    }
}

struct SpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimation()
    }
}
