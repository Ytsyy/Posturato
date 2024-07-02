//
//  LoginView.swift
//  Posturato
//
//  Created by Maxim on 29.06.2024.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""
    @Published var isPasswordVisible: Bool = false

    @Published var isLoggedIn: Bool = false {
        didSet {
            UserManager.shared.isLoggedIn = isLoggedIn
        }
    }

    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            if let error = error {
                self?.errorMessage = error.localizedDescription
            } else {
                self?.isLoggedIn = true
            }
        }
    }
}


import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @Binding var isLoggedIn: Bool

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    .frame(height: 40) // Уменьшенный отступ для логотипа
                
                Image("AppLogo")
                    .resizable()
                    .frame(width: 200, height: 200) // Увеличенный логотип
                    .padding(.bottom, 30) // Уменьшенное расстояние
                
                CustomTextField(placeholder: "Email", text: $viewModel.email, isSecure: false, isVisible: .constant(true))
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                
                CustomTextField(placeholder: "Password", text: $viewModel.password, isSecure: true, isVisible: $viewModel.isPasswordVisible)
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

                SocialLoginButton(
                    title: "Log in",
                    action: {
                        viewModel.login()
                    },
                    backgroundColor: Color("DarkBlueMain"),
                    textColor: .white
                )
                .padding(.horizontal, 20)
                .padding(.bottom, 30) // Увеличенное расстояние
                
                SocialLoginButton(
                    title: "Continue with Apple",
                    action: {
                        // Apple sign in action
                    },
                    backgroundColor: .black,
                    textColor: .white,
                    icon: Image(systemName:"applelogo")  // Замените "apple-logo" на имя вашей иконки Apple
                )
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
                
                SocialLoginButton(
                    title: "Continue with Google",
                    action: {
                        // Google sign in action
                    },
                    backgroundColor: .red,
                    textColor: .white,
                    icon: Image("google-icon")  // Замените "google-icon" на имя вашей иконки Google
                )
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
        .onChange(of: viewModel.isLoggedIn) { _, newValue in
            if newValue {
                isLoggedIn = newValue
            }
        }
    }
}

