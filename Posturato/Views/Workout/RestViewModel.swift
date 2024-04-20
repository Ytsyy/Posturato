//
//  RestViewModel.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import Foundation
import SwiftUI

class RestViewModel: ObservableObject {
    @Published var remainingSeconds: Int = 10
    var timer: Timer?
    var skipAction: () -> Void
    
    init(skipAction: @escaping () -> Void, initialTime: Int = 10) {
        self.skipAction = skipAction
        self.remainingSeconds = initialTime
    }
    
    func startTimer() {
        stopTimer() // Остановить предыдущий таймер, если он был активен
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            if self.remainingSeconds > 0 {
                self.remainingSeconds -= 1
            } else {
                self.stopTimer()
                self.skipAction()
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func addSeconds(_ seconds: Int) {
        remainingSeconds += seconds
    }
    
    func skipRest() {
        stopTimer()
        skipAction()
    }
}
