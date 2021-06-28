//
//  ImageURL.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//

//MARK: - How to load a remote image from a URL
import SwiftUI

struct ImageURL: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://www.hackingwithswift.com/img/paul@2x.png"), scale: 2) { image in
            image.resizable()
        } placeholder: {
            Color.red
        }
        .frame(width: 128, height: 128)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

struct ImageURL_Previews: PreviewProvider {
    static var previews: some View {
        ImageURL()
    }
}
