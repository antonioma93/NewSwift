//
//  Enable&Disable element.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct Enable_Disable_element: View {
    @State private var agreedToTerms = false
    
    var body: some View {
        Form {
            Section {
                Toggle("Agree to terms and conditions", isOn: $agreedToTerms)
            }
            
            Section {
                Button("Continue") {
                    print("Thank you")
                }
                .disabled(agreedToTerms == false)
            }
        }
    }
}

struct Enable_Disable_element_Previews: PreviewProvider {
    static var previews: some View {
        Enable_Disable_element()
    }
}
