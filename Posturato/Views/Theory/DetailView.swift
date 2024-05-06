//
//  DetailView.swift
//  Posturato
//
//  Created by Maxim on 06.05.2024.
//

import Foundation
import SwiftUI


struct DetailView: View {
    var title: String
    var description: String
    var image: String?
    var videoURL: URL?

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                if let imageName = image {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .padding(.bottom, 10)
                }
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                Text(description)
                    .font(.body)
                    .padding(.bottom, 20)

                if let videoURL = videoURL {
                    //FUTURE

                }
            }
            .padding()
        }
        .navigationTitle(title)
    }
}
