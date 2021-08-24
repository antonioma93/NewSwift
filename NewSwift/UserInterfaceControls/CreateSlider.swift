//
//  CreateSlider.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct CreateSlider: View {
    @State private var degrees: Double = 0
    
    var body: some View {
        VStack {
            Slider(value: $degrees, in: -100...100)
            Text("\(degrees, specifier: "%.1f") Degrees is \(degrees * 9 / 5 + 32, specifier: "%.1f")Fahrenheit")
        }
    }
}

struct CreateSlider_Previews: PreviewProvider {
    static var previews: some View {
        CreateSlider()
    }
}
