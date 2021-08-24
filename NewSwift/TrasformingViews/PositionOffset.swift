//
//  PositionOffset.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct PositionOffset: View {
    var body: some View {
        HStack {
            Text("Before")
                .background(Color.red)
                .offset(y: 15)
            Text("After")
                .offset(y: 15)
                .background(Color.red)
        }
    }
}

struct PositionOffset_Previews: PreviewProvider {
    static var previews: some View {
        PositionOffset()
    }
}
