//
//  ReadTextFromTextField.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct ReadTextFromTextField: View {
    @State private var emailAddress = ""
    
    var body: some View {
        VStack {
            TextField("Enter your email", text: $emailAddress)
                .disableAutocorrection(true)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
    }
}

struct ReadTextFromTextField_Previews: PreviewProvider {
    static var previews: some View {
        ReadTextFromTextField()
    }
}
