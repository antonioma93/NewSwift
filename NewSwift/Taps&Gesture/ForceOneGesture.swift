//
//  ForceOneGesture.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct ForceOneGesture: View {
    @State private var message = "Long press then drag"
    
    var body: some View {
        let longPress = LongPressGesture()
            .onEnded { _ in
                message = "Now drag me"
            }
        let drag = DragGesture()
            .onEnded {_ in 
                message = "Success!"
            }
        
        let combined = longPress.sequenced(before: drag)
        
        Text(message)
            .gesture(combined)
    }
}

struct ForceOneGesture_Previews: PreviewProvider {
    static var previews: some View {
        ForceOneGesture()
    }
}
