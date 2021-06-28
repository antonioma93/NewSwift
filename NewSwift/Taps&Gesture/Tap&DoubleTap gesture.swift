//
//  Tap&DoubleTap gesture.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct Tap_DoubleTap_gesture: View {
    var body: some View {
        Text("Tap me")
            .onTapGesture {
                print("Tapped")
            }
        Image("metro")
            .onTapGesture(count: 2) {
                print("Double tap")
            }
    }
}

struct Tap_DoubleTap_gesture_Previews: PreviewProvider {
    static var previews: some View {
        Tap_DoubleTap_gesture()
    }
}
