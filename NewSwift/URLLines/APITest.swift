//
//  APITest.swift
//  APITest
//
//  Created by Massa Antonio on 24/08/21.
//

import SwiftUI

struct APITest: View {
	@State private var quotes = [String]()

	var body: some View {
		List(quotes, id: \.self, rowContent: Text.init)
			.task {
				do {
					let url = URL(string: "https://hws.dev/quotes.txt")!

					for try await quote in url.lines {
						quotes.append(quote)
					}
				} catch {
						//Stop adding quotes when an error is thrown
				}
			}
	}
}

struct APITest_Previews: PreviewProvider {
    static var previews: some View {
        APITest()
    }
}
