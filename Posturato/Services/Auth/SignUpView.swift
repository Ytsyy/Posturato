//
//  SignUpView.swift
//  Posturato
//
//  Created by Maxim on 29.06.2024.
//

import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Binding var isLoggedIn: Bool
    @State private var errorMessage = ""
    @State private var isPasswordVisible = false
    @State private var isConfirmPasswordVisible = false

    var body: some View {
        VStack {
            Text("Sign up")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 20)

            TextField("Email", text: $email)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)

            ZStack(alignment: .trailing) {
                if isPasswordVisible {
                    TextField("Password", text: $password)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                        .textContentType(.oneTimeCode)
                } else {
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                        .textContentType(.oneTimeCode)
                }
                Button(action: {
                    isPasswordVisible.toggle()
                }) {
                    Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                }
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 20)

            ZStack(alignment: .trailing) {
                if isConfirmPasswordVisible {
                    TextField("Confirm Password", text: $confirmPassword)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                        .textContentType(.oneTimeCode)
                } else {
                    SecureField("Confirm Password", text: $confirmPassword)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                        .textContentType(.oneTimeCode)
                }
                Button(action: {
                    isConfirmPasswordVisible.toggle()
                }) {
                    Image(systemName: isConfirmPasswordVisible ? "eye" : "eye.slash")
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                }
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 20)

            Button(action: {
                signUp()
            }) {
                HStack {
                    Spacer()
                    Text("Sign up")
                    Spacer()
                }
                .frame(height: 50)
                .background(Color("DarkBlueMain"))
                .foregroundColor(.white)
                .cornerRadius(15)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 20)

            Button(action: {
                // Apple sign up action
            }) {
                HStack {
                    Spacer()
                    Image(systemName: "applelogo")
                    Text("Sign up with Apple")
                    Spacer()
                }
                .frame(height: 50)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(15)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 10)
            
            Button(action: {
                // Google sign up action
            }) {
                HStack {
                    Spacer()
                    Image("google-icon") 
                    Text("Sign up with Google")
                    Spacer()
                }
                .frame(height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(15)
            }
            .padding(.horizontal, 20)
            
            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }

            Spacer()
        }
        .padding()
        .background(Color("BeigeMain"))
        .ignoresSafeArea(edges: .all)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top) // Добавлен отступ
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
