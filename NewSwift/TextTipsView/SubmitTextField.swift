//
//  SubmitTextField.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//

//MARK: - How to take action when the user submits a TextField

import SwiftUI

struct SubmitTextField: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        Form {
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
        }
        .onSubmit {
            guard username.isEmpty == false && password.isEmpty == false
            else {return}
            print("Authenticating..")
        }
    }
}

struct SubmitTextField_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextField()
    }
}
