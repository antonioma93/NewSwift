//
//  ShowMenuPressButton.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct ShowMenuPressButton: View {
    var body: some View {
        Menu("Options") {
            Button("Order now", action: placeOrder)
            Button("Adjust Order", action: adjustOrder)
            Menu("More options") {
                Button("Rename", action: rename)
                Button("Delay", action: delay)
            }
            Button("Cancel", action: cancelOrder)
        } primaryAction: {
            justDoIt()
        }
    }
    
    func justDoIt() {
        print("Button was tapped")
    }
    
    func placeOrder(){}
    func adjustOrder(){}
    func cancelOrder(){}
    func rename(){}
    func delay(){}
}

struct ShowMenuPressButton_Previews: PreviewProvider {
    static var previews: some View {
        ShowMenuPressButton()
    }
}
