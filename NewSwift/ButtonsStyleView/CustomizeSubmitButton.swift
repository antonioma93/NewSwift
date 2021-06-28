//
//  CustomizeSubmitButton.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//

import SwiftUI

struct CustomizeSubmitButton: View {
    
    var body: some View {
        Menu("Options") {
            Button("Order now", action: placeOrder)
            Button("Adjust Order", action: adjustOrder)
            Button("Cancel", action: cancelOrder)
        } primaryAction: {
            justDoIt()
        }
    }
    
    
    
    func justDoIt() {
        print("Button tapped")
    }
    
    func placeOrder(){ }
    func adjustOrder(){ }
    func cancelOrder(){ }
}

struct CustomizeSubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeSubmitButton().preferredColorScheme(.light)
    }
}

