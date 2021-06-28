//
//  GestureRecognizer.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct GestureRecognizer: View {
    @State private var dragCompleted = false
    
    var body: some View {
        VStack {
            Image("metro")
                .gesture(DragGesture(minimumDistance: 50)
                            .onEnded {_ in 
                        dragCompleted = true
                }
                )
            if dragCompleted {
                Text("Drag completed")
            }
        }
    }
}

struct GestureRecognizer_Previews: PreviewProvider {
    static var previews: some View {
        GestureRecognizer()
    }
}
