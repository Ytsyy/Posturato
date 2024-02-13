//
//   Content-ViewModel.swift
//  Posturato
//
//  Created by Maxim on 12.02.2024.
//

import Foundation
import SwiftUI

extension ContentView{
    @MainActor class ViewModel: ObservableObject{
        @Published var isTurndedOn: Bool = false
        @Published var counter = 0
        @Published var itemList = [Item]()
        
        func increment() {
            counter+=1
        }
        
        func addItem() {
            let randomItems = ["Elm1", "Elm2","Elm3", "Elm4"]
            let item = randomItems.randomElement()!
            
            let newItem = Item(name: item, description: "Item: \(itemList.count + 1)")
            
            withAnimation {
                itemList.insert(newItem, at: 0)
            }
        }
        func removeItem(){
            if !itemList.isEmpty{
                withAnimation {
                    itemList.remove(at: 0)
                }
            }
        }
    }
}
