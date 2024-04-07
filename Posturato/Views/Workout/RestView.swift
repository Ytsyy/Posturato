//
//  RestView.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import Foundation
import SwiftUI

struct RestView: View {
    @Binding var isPresented: Bool
    let skipAction: () -> Void

    @State private var remainingSeconds: Int = 10
    @State private var timer: Timer?

    var body: some View {
        VStack {
            Text("Время отдыха")
                .font(.title)
            Text("\(remainingSeconds) секунд")
                .font(.largeTitle)
            Button("Пропустить") {
                stopTimer()
                skipAction()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(8)
            Button("+ 10 секунд") {
                addSeconds(10)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .onAppear {
            startTimer()
        }
        .onDisappear {
            stopTimer()
        }
    }

    private func startTimer() {
        stopTimer() // Остановите предыдущий таймер, если он был активен
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if self.remainingSeconds > 0 {
                self.remainingSeconds -= 1
            } else {
                self.stopTimer()
                self.skipAction()
            }
        }
    }

    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    private func addSeconds(_ seconds: Int) {
        remainingSeconds += seconds
    }
}
