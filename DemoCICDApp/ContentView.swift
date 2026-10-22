//
//  ContentView.swift
//  DemoCICDApp
//
//  Created by Saurabh Mishra on 21/10/26.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var message = ""
    
    private let validator = LoginValidator()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("CI/CD Demo")
                .font(.largeTitle)
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            Button("Login") {
                let valid = validator.isValid(email: email, password: password)
                message = valid ? "Success" : "Invalid"
            }
            Text(message)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
