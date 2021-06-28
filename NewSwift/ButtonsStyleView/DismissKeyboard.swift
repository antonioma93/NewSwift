//
//  DismissKeyboard.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//

//MARK: - How to dismiss the keyboard for a TextField
import SwiftUI

struct DismissKeyboard: View {
    enum Field {
        case firstName, lastName, emailAddress
    }
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    @State private var tipAmount = ""
    
    @FocusState private var focusedField: Field?
    
    var body: some View {
        VStack {
            TextField("Name: ", text: $tipAmount)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            
            Button("Submit") {
                print("Tip: \(tipAmount)")
                hideKeyboard()
            }
            TextField("Enter your first name", text: $firstName)
                .focused($focusedField, equals: .firstName)
                .textContentType(.givenName)
                .submitLabel(.next)
            
            TextField("Enter your last name", text: $lastName)
                .focused($focusedField, equals: .lastName)
                .textContentType(.familyName)
                .submitLabel(.next)
            
            TextField("Enter your email ", text: $emailAddress)
                .focused($focusedField, equals: .emailAddress)
                .textContentType(.emailAddress)
                .submitLabel(.join)
        }
        .onSubmit {
            switch focusedField {
            case .firstName:
                focusedField = .lastName
            case .lastName:
                focusedField = .emailAddress
            default:
            print("Creating account..")
            }
        }
    }
}
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct DismissKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        DismissKeyboard()
    }
}
