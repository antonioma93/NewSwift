//
//  Markdown.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//

import SwiftUI

struct Markdown: View {
    var body: some View {
        VStack {
            Text("This is regular text.")
            Text("* This is **bold** text, this is *italic* text, and this is ***bold, italic*** text.")
            Text("~~A strikethrough example~~")
            Text("`Monospaced works too`")
            Text("Visit Apple: [click here](https://apple.com)")
        }
    }
}

struct Markdown_Previews: PreviewProvider {
    static var previews: some View {
        Markdown()
    }
}
