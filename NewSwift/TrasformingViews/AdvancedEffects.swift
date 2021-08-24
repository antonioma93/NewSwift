//
//  AdvancedEffects.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct AdvancedEffects: View {
    var body: some View {
        Text("Forecast: Sun")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.red)
            .padding()
            .background(Color.orange)
            .padding()
            .background(Color.yellow)
    }
}

struct AdvancedEffects_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedEffects()
    }
}
