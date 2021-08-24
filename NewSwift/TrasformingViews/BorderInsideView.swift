//
//  BorderInsideView.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct BorderInsideView: View {
    @State private var phase: CGFloat = 0
    
    var body: some View {
        Circle()
            .strokeBorder(Color.blue, lineWidth: 5)
            .frame(width: 200, height: 200)
            .padding()
        Rectangle()
            .strokeBorder(style: StrokeStyle(lineWidth: 4, dash: [10], dashPhase: phase))
            .frame(width: 200, height: 200)
            .onAppear {
                withAnimation(.linear.repeatForever(autoreverses: false)) {
                    phase -= 20
                }
            }
    }
}

struct BorderInsideView_Previews: PreviewProvider {
    static var previews: some View {
        BorderInsideView()
    }
}
