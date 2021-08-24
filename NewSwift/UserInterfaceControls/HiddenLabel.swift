//
//  HiddenLabel.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct HiddenLabel: View {
    @State private var selectedNumber = 0
    
    var body: some View {
        VStack {
            Picker("Select a number", selection: $selectedNumber) {
                ForEach(0..<100) {
                    Text("\($0)")
                }
            }
        }
        .labelsHidden()
    }
}

struct HiddenLabel_Previews: PreviewProvider {
    static var previews: some View {
        HiddenLabel()
    }
}
