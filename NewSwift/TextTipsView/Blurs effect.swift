//
//  Blurs effect.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//

//MARK: - How to add visual effect blurs
import SwiftUI

struct Blurs_effect: View {
    var body: some View {
        ZStack {
            Image("Singapore")
            
            Text("Visit Singapore")
                .foregroundColor(.secondary)
                .padding()
                .background(.ultraThickMaterial)
        }
    }
}

struct Blurs_effect_Previews: PreviewProvider {
    static var previews: some View {
        Blurs_effect()
    }
}
