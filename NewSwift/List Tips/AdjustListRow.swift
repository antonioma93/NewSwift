//
//  AdjustListRow.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//

import SwiftUI

struct AdjustListRow: View {
    var body: some View {
        List {
            ForEach(1..<100) { index in
                Text("Row\(index)")
                    .listRowSeparator(.visible)
                    .listRowSeparatorTint(.blue)
            }
        }
    }
}

struct AdjustListRow_Previews: PreviewProvider {
    static var previews: some View {
        AdjustListRow().preferredColorScheme(.dark)
    }
}
