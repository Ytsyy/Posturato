//
//  RestView.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import Foundation
import SwiftUI

import SwiftUI

struct RestView: View {
    @ObservedObject var viewModel: RestViewModel

    var body: some View {
        VStack {
            Text("Время отдыха")
                .font(.title)
            Text("\(viewModel.remainingSeconds) секунд")
                .font(.largeTitle)
            Button("Пропустить") {
                viewModel.skipRest()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(8)
            Button("+ 10 секунд") {
                viewModel.addSeconds(10)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .onAppear {
            viewModel.startTimer()
        }
        .onDisappear {
            viewModel.stopTimer()
        }
    }
}
