//
//  CreateCustomViewa.swift
//  NewSwift
//
//  Created by Massa Antonio on 30/06/21.
//

import SwiftUI

struct Employee {
    var name: String
    var jobTitle: String
    var emailAddress: String
    var profilePicture: String
}

struct ProfilePicture: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}

struct EmailAddress: View {
    var address: String
    
    var body: some View {
        HStack {
            Image(systemName: "envelope")
            Text("Address")
        }
    }
}

struct EmployeeDetails: View {
    var employee: Employee
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(employee.name)
                .font(.largeTitle)
                .foregroundColor(.primary)
            Text(employee.jobTitle)
                .foregroundColor(.secondary)
            EmailAddress(address: employee.emailAddress)
        }
    }
}

struct EmployeeView: View {
    var employee: Employee
    
    var body: some View {
        HStack {
            ProfilePicture(imageName: employee.profilePicture)
            EmployeeDetails(employee: employee)
        }
    }
}

struct CreateCustomViews: View {
        let employee = Employee(name: "Antonio", jobTitle: "iOS Developer", emailAddress: "antomassa@icloud.com", profilePicture: "metro")
    
        var body: some View {
            VStack {
                EmployeeView(employee: employee)
            }
            .padding(.trailing, 150)
            .padding(.bottom, 600)
            
    }
}

struct CreateCustomViews_Previews: PreviewProvider {
    static var previews: some View {
        CreateCustomViews()
    }
}
