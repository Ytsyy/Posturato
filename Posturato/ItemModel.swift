//
//  ItemModel.swift
//  Posturato
//
//  Created by Maxim on 12.02.2024.
//

import Foundation

struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    
    static var exampleItem = Item(name: "Xbox", description: "Sample description")
}
