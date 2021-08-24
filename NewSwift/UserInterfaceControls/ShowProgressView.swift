//
//  ShowProgressView.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct ShowProgressView: View {
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            ProgressView("Downloading..", value: downloadAmount, total: 100)
        }
        .onReceive(timer) { _ in
            if downloadAmount < 100 {
                downloadAmount += 2
            }
        }
    }
}

struct ShowProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ShowProgressView()
    }
}
