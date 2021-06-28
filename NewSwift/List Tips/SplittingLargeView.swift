//
//  Widget.swift
//  NewSwift
//
//  Created by Massa Antonio on 25/06/21.
//

import SwiftUI

struct SplittingLargeView: View {
    let users = ["Paul", "Antonio"]
    
    var body: some View {
        NavigationView {
            List(users, id: \.self) { user in
                NavigationLink(destination: Text("Detail View")) {
                    Image(systemName: "person.crop.circle.badge.checkmark").renderingMode(.original)
                        .resizable()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text(user)
                            .font(.headline)
                        Text("Occupation: Programmer")
                    }
                }
            }
            .navigationTitle("Users")
        }
    }
}

struct Widget_Previews: PreviewProvider {
    static var previews: some View {
        SplittingLargeView()
    }
}
