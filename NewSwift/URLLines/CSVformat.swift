//
//  CSVformat.swift
//  CSVformat
//
//  Created by Massa Antonio on 24/08/21.
//

import SwiftUI

struct UserCsv: Identifiable {
	let id: Int
	let firstName: String
	let lastName: String
	let country: String

	init?(csv: String) {
		let fields = csv.components(separatedBy: ",")
		guard fields.count == 4 else { return nil }
		self.id = Int(fields[0]) ?? 0
		self.firstName = fields[1]
		self.lastName = fields[2]
		self.country = fields[3]
	}
}

struct CSVformat: View {
	@State private var users = [UserCsv]()

    var body: some View {
		List(users) { user in
			VStack(alignment: .leading) {
				Text("\(user.firstName) \(user.lastName)")
					.font(.headline)
				Text(user.country)
			}
		}
		.task {
			do {
				let url = URL(string: "https://hws.dev/users.csv")!
				let userData = url.lines.compactMap(UserCsv.init)

				for try await user in userData {
					users.append(user)
				}
			} catch {
				//Stop adding users when an error is thrown
			}
		}
    }
}

struct CSVformat_Previews: PreviewProvider {
    static var previews: some View {
        CSVformat()
    }
}
