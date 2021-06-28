//
//  RespondingToEvents.swift
//  NewSwift
//
//  Created by Massa Antonio on 25/06/21.
//

import SwiftUI

struct RespondingToEvents: View {
    @Environment(\.scenePhase) var scenePhase
    @State private var name = "Taylor"
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Hello World")
                }
                Button("Run") {
                    print("Running..")
                }
                .keyboardShortcut("r", modifiers: .shift)
                Button("Home") {
                    print("Go home")
                }
                .keyboardShortcut("h", modifiers: [.control, .option, .command])
                
                TextField("Enter your name", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            Button("Click me!") {
                                print("Clickedw")
                            }
                        }
                    }
            }
            .onAppear {
                print("ContentView appeared")
            }
            .onDisappear {
                print("ContentView disappear")
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Second View")
        }
        .onAppear {
            print("DetailView appear")
        }
        .onDisappear {
            print("DetailView disappear")
        }
    }
}

struct RespondingToEvents_Previews: PreviewProvider {
    static var previews: some View {
        RespondingToEvents()
    }
}
