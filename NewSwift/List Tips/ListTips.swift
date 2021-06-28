//
//  UserMoveRows.swift
//  NewSwift
//
//  Created by Massa Antonio on 28/06/21.
//

import SwiftUI

struct TaskRow: View {
    var body: some View {
        Text("Task data goes here ")
    }
}

struct ListTips: View {
    @State private var users = ["A", "B", "C"]
    @State private var selection = Set<String>()
    
    let names = ["Cyril","Lana", "Mallory", "Sterling"]
    
    var body: some View {
        
//        ScrollViewReader { proxy in
//            VStack {
//                Button("Jump to #50") {
//                    withAnimation {
//                        proxy.scrollTo(50, anchor: .top)
//                    }
//                }
//                Spacer()
//                Button("Jump to #20") {
//                    withAnimation {
//                        proxy.scrollTo(20, anchor: .top)
//                    }
//                }
//                List(0..<100, id: \.self) { i in
//                    Text("Example \(i)")
//                        .id(i)
//                }
//            }
//        }
        
        NavigationView {
//            List(names, id: \.self, selection: $selection) { name in Text(name)
//            }
//            .navigationTitle("List selection")
//            .toolbar {
//                EditButton()
//            }
            
            List {
                Section(header: Text("Important tasks"), footer: Text("End")) {
                    TaskRow()
                    TaskRow()
                    TaskRow()
                }
                .headerProminence(.increased)
                
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onMove(perform: move)
                .onDelete(perform: delete)
                
                ForEach(0..<3) {
                    Text("Row \($0)")
                }
                .listRowBackground(Color.red)
                
                Section(header: Text("Other tasks")) {
                    TaskRow()
                    TaskRow()
                    TaskRow()
                }
            }
            .listStyle(.insetGrouped)
            .toolbar {
                EditButton()
            }
        }
    }
    func move(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
    
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

struct UserMoveRows_Previews: PreviewProvider {
    static var previews: some View {
        ListTips()
    }
}
