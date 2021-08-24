//
//  ShadowAroundView.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct ShadowAroundView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .border(Color.blue, width: 4)
            .shadow(color: .blue, radius: 10, x: 10, y: 10)
            .shadow(color: .green, radius: 10, x: 10, y: 10)
            .shadow(color: .red, radius: 10, x: 10, y: 10)


    }
}

struct ShadowAroundView_Previews: PreviewProvider {
    static var previews: some View {
        ShadowAroundView()
    }
}
