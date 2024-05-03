//
//  RestView.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import SwiftUI

struct RestView: View {
    @ObservedObject var viewModel: WorkoutViewModel

    var body: some View {
        VStack {
            Text("Rest")
                .font(.largeTitle)
            
            // Таймер
            Text("\(viewModel.remainingTime) сек")
                .font(.largeTitle)
            
            // Кнопка добавления времени
            Button(action: {
                viewModel.addTime()
            }) {
                Text("+10 сек")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }

            // Кнопка пропуска
            Button(action: {
                viewModel.skip()
            }) {
                Text("Пропустить")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("Rest View")
    }
}
