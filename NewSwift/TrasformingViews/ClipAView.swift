//
//  ClipAView.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct ClipAView: View {
    var body: some View {
        Button {
            print("Button pressed")
        } label: {
            Image(systemName: "bolt.fill")
                .renderingMode(.original)
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 2, leading: 20, bottom: 2, trailing: 20))
                .background(Color.blue)
                .clipShape(Capsule())
            Spacer()
        }
    }
}

struct ClipAView_Previews: PreviewProvider {
    static var previews: some View {
        ClipAView()
    }
}
