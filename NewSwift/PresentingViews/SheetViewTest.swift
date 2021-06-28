//
//  SheetViewTest.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct SheetViewTest: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(Color.black)
    }
}

struct SheetViewTest_Previews: PreviewProvider {
    static var previews: some View {
        SheetViewTest()
    }
}
