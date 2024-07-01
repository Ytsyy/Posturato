//
//  LoginView.swift
//  Posturato
//
//  Created by Maxim on 29.06.2024.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage = ""
    @State private var isPasswordVisible = false

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    .frame(height: 40) // Уменьшенный отступ для логотипа
                
                Image("AppLogo")
                    .resizable()
                    .frame(width: 200, height: 200) // Увеличенный логотип
                    .padding(.bottom, 30) // Уменьшенное расстояние
                
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
                .padding(.bottom, 5)
                
                Button(action: {
                    // Future action for password recovery
                }) {
                    Text("Forgot password?")
                        .font(.footnote)
                        .foregroundColor(.blue)
                }
                .padding(.bottom, 20)

                Button(action: {
                    login()
                }) {
                    HStack {
                        Spacer()
                        Text("Log in")
                        Spacer()
                    }
                    .frame(height: 50)
                    .background(Color("DarkBlueMain"))
                    .foregroundColor(.white)
                    .cornerRadius(15)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 30) // Увеличенное расстояние
                
                Button(action: {
                    // Apple sign in action
                }) {
                    HStack {
                        Spacer()
                        Image(systemName: "applelogo")
                        Text("Continue with Apple")
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
                    // Google sign in action
                }) {
                    HStack {
                        Spacer()
                        Image("google-icon") // Ensure you have a Google icon in your assets
                        Text("Continue with Google")
                        Spacer()
                    }
                    .frame(height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                }
                .padding(.horizontal, 20)
                
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
            .background(Color("BeigeMain")).ignoresSafeArea()
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
