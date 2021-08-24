//
//  CreateStepper.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct CreateStepper: View {
    @State private var age = 18
    
    var body: some View {
        VStack {
            Stepper("Enter your age", onIncrement: {
                age += 1
            }, onDecrement: {
                age -= 1
            })
            Text("Your age is \(age)")
        }
    }
}

struct CreateStepper_Previews: PreviewProvider {
    static var previews: some View {
        CreateStepper()
    }
}
