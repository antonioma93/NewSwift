//
//  BuiltInShape.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct BuiltInShape: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 200, height: 200)
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Capsule()
                .fill(Color.green)
                .frame(width: 100, height: 50)
            
            Ellipse()
                .fill(Color.blue)
                .frame(width: 100, height: 50)
           
            Circle()
                .fill(Color.white)
                .frame(width: 100, height: 50)
        }
    }
}

struct BuiltInShape_Previews: PreviewProvider {
    static var previews: some View {
        BuiltInShape()
    }
}
