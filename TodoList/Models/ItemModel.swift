//
//  ItemModel.swift
//  TodoList
//
//  Created by Caleb Cupul on 24/12/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: UUID
    let title: String
    var isCompleted: Bool
    
    init(id: UUID = UUID(), title: String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func toggleCompletition() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}


