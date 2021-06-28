//
//  ImplicitStacking.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let username = "Anonymous"
}

struct ImplicitStacking: View {
    let users = [User(), User(), User()]
    
    var body: some View {
        List(users) { user in
            Image("metro")
                .resizable()
                .frame(width: 40, height: 40)
            Text(user.username)
        }
    }
}

struct ImplicitStacking_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitStacking()
    }
}
