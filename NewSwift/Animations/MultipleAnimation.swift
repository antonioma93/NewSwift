//
//  MultipleAnimation.swift
//  NewSwift
//
//  Created by Massa Antonio on 30/06/21.
//

import SwiftUI

struct MultipleAnimation: View {
    @State private var isEnabled = false
    
    var body: some View {
        Button("Press me") {
            isEnabled.toggle()
        }
        .foregroundColor(.white)
        .frame(width: 200, height: 200)
        .background(isEnabled ? Color.green : Color.red)
        .animation(nil, value: isEnabled)
        .clipShape(RoundedRectangle(cornerRadius: isEnabled ? 100 : 0))
        .animation(.default, value: isEnabled)
    }
}

struct MultipleAnimation_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAnimation()
    }
}
