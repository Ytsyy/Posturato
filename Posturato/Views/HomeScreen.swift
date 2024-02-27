//
//  HomeView.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        VStack {
            Image("JustPhoto") // Убедитесь, что картинка добавлена в Assets
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)

            Text("Счетчик: \(viewModel.counter)")
                .padding()

            Button("Увеличить") {
                viewModel.incrementCounter()
            }
            .padding()
        }
    }
}
