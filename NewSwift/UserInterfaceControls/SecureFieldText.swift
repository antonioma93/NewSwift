//
//  SecureField.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct SecureFieldText: View {
    @State private var password: String = ""

       var body: some View {
           VStack {
               SecureField("Enter a password", text: $password)
               Text("You entered: \(password)")
           }
       }
}

struct SecureFieldText_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldText()
    }
}
