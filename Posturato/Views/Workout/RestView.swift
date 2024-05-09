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
            Spacer()
            
            Text("Rest")
                .font(.largeTitle)
                .padding()
            
            Text("\(viewModel.remainingTime) сек")
                .font(.largeTitle)
                .padding(.bottom)
            
            Spacer()
            
            HStack(spacing: 30) {
                Button(action: {
                    viewModel.addTime()
                }) {
                    Text("+10 сек")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }

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
            .padding(.bottom)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("Rest View")
        .navigationBarHidden(true)
        .toolbar(.hidden, for: .tabBar)
    }
}
