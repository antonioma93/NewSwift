//
//  CreateDatePicker.swift
//  NewSwift
//
//  Created by Massa Antonio on 02/07/21.
//

import SwiftUI

struct CreateDatePicker: View {
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    @State private var birthDate = Date()
    
    var body: some View {
        VStack {
            Text("Enter your birthday")
                .font(.largeTitle)
            DatePicker("Enter your birthdate", selection: $birthDate)
                .datePickerStyle(GraphicalDatePickerStyle())
                .frame(maxHeight: 400)
            
        }
    }
}

struct CreateDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        CreateDatePicker()
    }
}
