//
//  CombineText.swift
//  NewSwift
//
//  Created by Massa Antonio on 30/06/21.
//

import SwiftUI

struct CombineText: View {
    var body: some View {
        Text("SwiftUI ")
            .font(.largeTitle)
            .foregroundColor(Color.blue)
        + Text("is ")
            .font(.headline)
            .foregroundColor(Color.red)
        + Text("awesome")
            .font(.footnote)
            .foregroundColor(Color.yellow)
    }
}

struct CombineText_Previews: PreviewProvider {
    static var previews: some View {
        CombineText()
    }
}
