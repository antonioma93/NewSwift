//
//  WorkingWithPresentation.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct TVShow: Identifiable {
    var id: String { name }
    let name: String
}

struct ShowAnAlert: View {
    @State private var selectedShow: TVShow?
    
    var body: some View {
        VStack(spacing: 20) {
            Text("What is your favorite TV Show?")
                .font(.headline)
            Button("Selected Ted Lasso") {
                selectedShow = TVShow(name: "Ted Lasso")
            }
            Button("Selected Bridgeton") {
                selectedShow = TVShow(name: "Bridgeton")
            }
        }
        .alert(item: $selectedShow) { show in
            Alert(title: Text(show.name), message: Text("Great Choice!"), dismissButton: .cancel())
        }
    }
}

struct WorkingWithPresentation_Previews: PreviewProvider {
    static var previews: some View {
        ShowAnAlert()
    }
}
