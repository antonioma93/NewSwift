//
//  SwipeActions.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//


//MARK: - How to add a search bar to filter your data
import SwiftUI

struct SwipeActions: View {
    @State private var total = 0
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<100) { i in
                    Text("\(i)")
                        .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button {
                                total += i
                            } label: {
                                Label("Add \(i)", systemImage: "plus.circle")
                            }
                            .tint(.indigo)
                       }
                        .swipeActions(edge: .trailing) {
                            Button {
                                total -= i
                            } label: {
                                Label("Subtract \(i)", systemImage: "minus.fill")
                            }
                        }

                }
            }
            .navigationTitle("Total: \(total)")
        }
    }
}

struct SwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActions()
    }
}
