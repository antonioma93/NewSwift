//
//  ViewInNavigationView.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct SecondView: View {
    
    var body: some View {
        Text("This is the detail view")
    }
}
struct ViewInNavigationView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Show detail view")
                }
                .navigationTitle("Navigation")
            }
        }
    }
}

struct ViewInNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ViewInNavigationView()
    }
}
