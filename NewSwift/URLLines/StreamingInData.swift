//
//  StreamingInData.swift
//  StreamingInData
//
//  Created by Massa Antonio on 24/08/21.
//

import SwiftUI

struct StreamingInData: View {
	@State private var lines = [String]()
	@State private var status = "Fetching.."

    var body: some View {
		VStack {
			Text("Count: \(lines.count)")
			Text("Status: \(status)")
		}
		.task {
			do {
				let url = URL(string: "https://hws.one/slow-fetch")!

				for try await line in url.lines {
					lines.append(line)
				}
				status = "Done!"
			} catch {
				status = "Error thrown"
			}
		}
    }
}

struct StreamingInData_Previews: PreviewProvider {
    static var previews: some View {
        StreamingInData()
    }
}
