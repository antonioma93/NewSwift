//
//  BasicAnimation.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct BasicAnimation: View {
    @State private var angle: Double = 0
    @State private var borderThickness: CGFloat = 1
    
    var body: some View {
        Button("Press here") {
            angle += 45
            borderThickness += 1
        }
        .padding()
        .border(Color.red, width: borderThickness)
        .rotationEffect(.degrees(angle))
        .animation(.easeIn, value: angle)
    }
}

struct BasicAnimation_Previews: PreviewProvider {
    static var previews: some View {
        BasicAnimation()
    }
}
