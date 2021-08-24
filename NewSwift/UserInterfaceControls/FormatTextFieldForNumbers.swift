//
//  FormatTextFieldForNumbers.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct FormatTextFieldForNumbers: View {
    @State private var score = 0
    
    var formatter: NumberFormatter = {
        let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    return formatter
    }()
    
    var body: some View {
        VStack {
            TextField("Amount to transfer", value: $score, formatter: formatter)
                .textFieldStyle(.roundedBorder)
                .padding()
                .keyboardType(.decimalPad)
            
            Text("Your score was \(score)")
        }
    }
}

struct FormatTextFieldForNumbers_Previews: PreviewProvider {
    static var previews: some View {
        FormatTextFieldForNumbers()
    }
}
