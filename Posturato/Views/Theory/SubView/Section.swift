//
//  Section.swift
//  Posturato
//
//  Created by Maxim on 06.05.2024.
//

import Foundation
import SwiftUI

struct SectionView<Item>: View where Item: Identifiable {
    var title: String
    var items: [Item]
    var itemContent: (Item) -> (title: String, description: String, image: String?, videoURL: URL?)

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.title)
                    .padding(.leading, 15)
                    .padding(.top, 10)

                Spacer()

                NavigationLink(destination: SectionDetailView(title: title, items: items, itemContent: itemContent)) {
                    Image(systemName: "chevron.right")
                        .padding(.trailing, 15)
                        .padding(.top, 10)
                }
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(items, id: \.id) { item in
                        let content = itemContent(item)
                        NavigationLink(destination: DetailView(title: content.title, description: content.description, image: content.image, videoURL: content.videoURL)) {
                            GenericCell(title: content.title, imageName: content.image)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.vertical) 
            }
        }
    }
}

struct SectionDetailView<Item>: View where Item: Identifiable {
    var title: String
    var items: [Item]
    var itemContent: (Item) -> (title: String, description: String, image: String?, videoURL: URL?)

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(items) { item in
                    let content = itemContent(item)
                    NavigationLink(destination: DetailView(title: content.title, description: content.description, image: content.image, videoURL: content.videoURL)) {
                        GenericCell(title: content.title, imageName: content.image)
                    }
                }
            }
            .padding()
        }
        .navigationTitle(title)
    }
}
