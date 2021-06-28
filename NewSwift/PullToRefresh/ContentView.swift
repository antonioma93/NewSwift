//
//  ContentView.swift
//  NewSwift
//
//  Created by Massa Antonio on 08/06/21.
//

//MARK: - How to enable pull to refresh

import SwiftUI

struct NewsItem: Decodable, Identifiable {
    let id: Int
    let title: String
    let strap: String
}

struct ContentView: View {
    @State private var news = [
        NewsItem(id: 0, title: "Want the latest news?", strap: "Pull to refresh!")
    ]

    var body: some View {
        NavigationView {
            List(news) { item in
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.headline)
                    Text(item.strap)
                        .foregroundColor(.secondary)
                }
            }
            .refreshable {
                do {
                    let url = URL(string: "https://www.hackingwithswift.com/samples/news-1.json")!
                    let (data, _ ) = try await URLSession.shared.data(from: url)
                    news = try JSONDecoder().decode([NewsItem].self, from: data)

                } catch {
                    news = []
                }
            }
        }
    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


