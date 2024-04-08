//
//  PrivacyPolicyViewModel.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import Foundation

class PrivacyPolicyViewModel: ObservableObject {
    @Published var text: String = "Это текст Политики конфиденциальности. Здесь описывается, как приложение собирает, использует и защищает личную информацию пользователей. Важно чётко указать, какие данные собираются, для чего они используются и кому могут быть раскрыты."
}
