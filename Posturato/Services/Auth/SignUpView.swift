//
//  SignUpView.swift
//  Posturato
//
//  Created by Maxim on 29.06.2024.
//

import SwiftUI
import FirebaseAuth

import SwiftUI
import FirebaseAuth

import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Binding var isLoggedIn: Bool
    @State private var errorMessage = ""

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                .padding(.bottom, 20)

            SecureField("Password", text: $password)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                .padding(.bottom, 20)
                .textContentType(.oneTimeCode) // Добавление этого модификатора

            SecureField("Confirm Password", text: $confirmPassword)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                .padding(.bottom, 20)
                .textContentType(.oneTimeCode) // Добавление этого модификатора

            Button(action: {
                signUp()
            }) {
                Text("Sign up")
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }

            Spacer()
        }
        .padding()
    }
    
    func signUp() {
        guard password == confirmPassword else {
            errorMessage = "Passwords do not match"
            return
        }

        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                errorMessage = error.localizedDescription
            } else {
                isLoggedIn = true
                UserManager.shared.isLoggedIn = true
            }
        }
    }
}
