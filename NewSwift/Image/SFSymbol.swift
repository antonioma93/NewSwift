//
//  SFSymbol.swift
//  NewSwift
//
//  Created by Massa Antonio on 16/06/21.
//

import SwiftUI

struct SFSymbol: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "thermometer.sun.fill")
                    .symbolRenderingMode(.multicolor)
            }
            .navigationBarItems(trailing: Image(systemName: "thermometer.sun.fill"))
            .symbolRenderingMode(.multicolor)
        }
    }
}

struct SFSymbol_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbol()
    }
}
