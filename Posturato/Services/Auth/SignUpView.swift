//
//  SignUpView.swift
//  Posturato
//
//  Created by Maxim on 29.06.2024.
//

import SwiftUI
import FirebaseAuth


class SignUpViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var errorMessage: String = ""
    @Published var isPasswordVisible: Bool = false
    @Published var isConfirmPasswordVisible: Bool = false

    @Published var isLoggedIn: Bool = false {
        didSet {
            UserManager.shared.isLoggedIn = isLoggedIn
        }
    }

    func signUp() {
        guard password == confirmPassword else {
            errorMessage = "Passwords do not match"
            return
        }

        guard password.count >= 6 else {
            errorMessage = "Password must be at least 6 characters long"
            return
        }

        let passwordRegex = ".*[0-9!@#$%^&*()].*"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        guard passwordTest.evaluate(with: password) else {
            errorMessage = "Password must contain at least one digit or special character"
            return
        }

        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                self.errorMessage = error.localizedDescription
            } else {
                self.isLoggedIn = true
            }
        }
    }

}

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    @Binding var isVisible: Bool

    var body: some View {
        ZStack(alignment: .trailing) {
            if isSecure && !isVisible {
                SecureField(placeholder, text: $text)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .autocorrectionDisabled(true)  // Отключить автоматическую коррекцию
                    .disableAutocorrection(true)
            } else {
                TextField(placeholder, text: $text)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .autocorrectionDisabled(true)  // Отключить автоматическую коррекцию
                    .disableAutocorrection(true)
            }
            if isSecure {
                Button(action: {
                    isVisible.toggle()
                }) {
                    Image(systemName: isVisible ? "eye" : "eye.slash")
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                }
            }
        }
    }
}

import SwiftUI

struct CustomButton: View {
    var title: String
    var action: () -> Void
    var backgroundColor: Color
    var textColor: Color

    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                Text(title)
                Spacer()
            }
            .frame(height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(15)
        }
    }
}

import SwiftUI

struct SocialLoginButton: View {
    var title: String
    var action: () -> Void
    var backgroundColor: Color
    var textColor: Color
    var icon: Image? = nil  // Добавляем опциональный параметр для иконки
    
    var body: some View {
        Button(action: action) {
                        HStack {
                            Spacer()
                            if let icon = icon {
                                icon
                            }
                            Text(title)
                            Spacer()
                        }
                        .frame(height: 50)
                        .background(backgroundColor)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    }
        .frame(maxWidth: .infinity)
    }
}
import SwiftUI

struct SignUpView: View {
    @StateObject private var viewModel = SignUpViewModel()
    @Binding var isLoggedIn: Bool

    var body: some View {
        VStack {
            Text("Sign up")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 20)

            CustomTextField(placeholder: "Email", text: $viewModel.email, isSecure: false, isVisible: .constant(true))
                .padding(.horizontal, 20)
                .padding(.bottom, 20)

            CustomTextField(placeholder: "Password", text: $viewModel.password, isSecure: true, isVisible: $viewModel.isPasswordVisible)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)

            CustomTextField(placeholder: "Confirm Password", text: $viewModel.confirmPassword, isSecure: true, isVisible: $viewModel.isConfirmPasswordVisible)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)

            SocialLoginButton(
                title: "Sign up",
                action: {
                    viewModel.signUp()
                },
                backgroundColor: Color("DarkBlueMain"),
                textColor: .white
            )
            .padding(.horizontal, 20)
            .padding(.bottom, 20)

            SocialLoginButton(
                title: "Sign up with Apple",
                action: {
                    // Apple sign up action
                },
                backgroundColor: .black,
                textColor: .white,
                icon: Image(systemName:"applelogo")
            )
            .padding(.horizontal, 20)
            .padding(.bottom, 10)

            SocialLoginButton(
                title: "Sign up with Google",
                action: {
                    // Google sign up action
                },
                backgroundColor: .red,
                textColor: .white,
                icon: Image("google-icon")  // Замените "google-icon" на имя вашей иконки Google
            )
            .padding(.horizontal, 20)

            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }

            Spacer()
        }
        .padding()
        .background(Color("BeigeMain"))
        .ignoresSafeArea(edges: .all)
        .padding(.top, getTopPadding())
        .onChange(of: viewModel.isLoggedIn) { _, newValue in
            isLoggedIn = newValue
        }
    }

    func getTopPadding() -> CGFloat {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return 0
        }
        return windowScene.windows.first?.safeAreaInsets.top ?? 0
    }
}
