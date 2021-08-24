//
//  BorderAroundVIew.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct BorderAroundView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .border(Color.green, width: 5)
        Text("Hacking test")
            .padding()
            .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 4)
            )
    }
}

struct BorderAroundView_Previews: PreviewProvider {
    static var previews: some View {
        BorderAroundView()
    }
}
