//
//  SearchBar.swift
//  NewSwift
//
//  Created by Massa Antonio on 09/06/21.
//

//MARK: - How to add a search bar to filter your data
import SwiftUI

struct SearchBar: View {
    let names = ["Adam", "Alex", "Aaron", "Ben", "Carl", "Dan", "David", "Edward", "Fred", "Frank", "George", "Hal", "Hank", "Ike", "John", "Jack", "Joe", "Larry", "Monte", "Matthew", "Mark", "Nathan", "Otto", "Paul", "Peter", "Roger", "Roger", "Steve", "Thomas", "Tim", "Ty", "Victor", "Walter"]
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResult, id: \.self) { name in
                    NavigationLink(destination: Text(name)) {
                        Text(name)
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Contacts")
        }
    }
    
    var searchResult: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText)}
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
