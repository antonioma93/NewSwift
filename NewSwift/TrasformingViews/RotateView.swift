//
//  RotateView.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct RotateView: View {
    @State private var rotation = 0.0
    
    var body: some View {
        VStack {
            Slider(value: $rotation, in: 0...360)
                .padding()
            Text("Slide to rotate")
                .rotationEffect(.degrees(rotation), anchor: .topLeading)
        }
    }
}

struct RotateView_Previews: PreviewProvider {
    static var previews: some View {
        RotateView()
    }
}
