//
//  DelayAnimation.swift
//  NewSwift
//
//  Created by Massa Antonio on 30/06/21.
//

import SwiftUI

struct DelayAnimation: View {
    @State private var rotation = 0.0
    var body: some View {
        Rectangle()
            .fill(Color.blue)
            .frame(width: 200, height: 200)
            .rotationEffect(.degrees(rotation))
            .animation(.easeInOut(duration: 3).delay(2), value: rotation)
            .onTapGesture {
                rotation += 360
            }
    }
}

struct DelayAnimation_Previews: PreviewProvider {
    static var previews: some View {
        DelayAnimation()
    }
}
