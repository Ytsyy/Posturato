//
//  FrequentlyAskedQuestionsView.swift
//  Posturato
//
//  Created by Maxim on 08.04.2024.
//

import Foundation

import Foundation
import SwiftUI

struct FrequentlyAskedQuestionsView: View {
    @ObservedObject var viewModel: FrequentlyAskedQuestionsViewModel
    
    var body: some View {
        ScrollView {
            Text(viewModel.text)
                .padding()
        }
        .navigationBarTitle("FrequentlyAskedQuestionsView", displayMode: .inline)
    }
}
