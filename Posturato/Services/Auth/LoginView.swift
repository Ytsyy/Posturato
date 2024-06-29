//
//  LoginView.swift
//  Posturato
//
//  Created by Maxim on 29.06.2024.
//

import SwiftUI
import FirebaseAuth

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 50)
                
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
                
                Button(action: {
                    login()
                }) {
                    Text("Login")
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom, 20)
                
                Button(action: {
                    // Google sign in action
                }) {
                    Text("Sign in with Google")
                        .frame(width: 200, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom, 10)
                
                Button(action: {
                    // Apple sign in action
                }) {
                    Text("Sign in with Apple")
                        .frame(width: 200, height: 50)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                HStack {
                    Text("Don't have an account yet?")
                    NavigationLink(destination: SignUpView(isLoggedIn: $isLoggedIn)) {
                        Text("Sign up")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.top, 50)
                
                Spacer()
            }
            .padding()
        }
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                errorMessage = error.localizedDescription
            } else {
                isLoggedIn = true
                UserManager.shared.isLoggedIn = true
            }
        }
    }
}
