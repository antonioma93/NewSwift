//
//  RotateView3D.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct RotateView3D: View {
    var body: some View {
        Text("Episode LLVM")
            .font(.largeTitle)
            .foregroundColor(.yellow)
            .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
    }
}

struct RotateView3D_Previews: PreviewProvider {
    static var previews: some View {
        RotateView3D()
    }
}
