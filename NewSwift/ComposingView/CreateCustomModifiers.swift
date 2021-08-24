//
//  CreateCustomModifiers.swift
//  NewSwift
//
//  Created by Massa Antonio on 30/06/21.
//

import SwiftUI

struct PrimaryLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.red)
            .foregroundColor(Color.white)
            .font(.largeTitle)
    }
}

struct CreateCustomModifiers: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(PrimaryLabel())
    }
}

struct CreateCustomModifiers_Previews: PreviewProvider {
    static var previews: some View {
        CreateCustomModifiers()
    }
}
