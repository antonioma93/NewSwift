//
//  AddBadge.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//

//MARK: - How to add a badge to TabView items and List rows

import SwiftUI

struct AddBadge: View {
    var body: some View {
        TabView {
            Text("Your home screen here")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .badge("3")
        }
    }
}

struct AddBadge_Previews: PreviewProvider {
    static var previews: some View {
        AddBadge()
    }
}
