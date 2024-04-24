//
//  FinishWorkoutView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import SwiftUI
struct FinishView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Тренировка завершена!")
                .font(.largeTitle)
            Text("Поздравляем с завершением тренировки.")
                .padding()
            Button("Закончить") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}
