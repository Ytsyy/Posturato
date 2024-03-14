//
//  StartTrainingCellView.swift
//  Posturato
//
//  Created by Maxim on 13.03.2024.
//

import SwiftUI

struct StartTrainingCellView: View {
    var title: String
    var day: String
    var description: String
    // Заглушка для картинки тренировки, вы можете заменить на Image("yourImageName")
    var imagePlaceholder: Image = Image(systemName: "person.fill")

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.title)
                .bold()
            
            HStack {
                imagePlaceholder
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    Text("День \(day) тренировки")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text(description)
                        .font(.body)
                        .foregroundColor(.primary)
                }
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2)) // Фоновый цвет для ячейки
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct StartTrainingCellView_Previews: PreviewProvider {
    static var previews: some View {
        // Пример использования с заглушками
        StartTrainingCellView(title: "Название тренировки", day: "1", description: "Описание тренировки здесь.")
    }
}
