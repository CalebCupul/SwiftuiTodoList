//
//  ItemModel.swift
//  TodoList
//
//  Created by Caleb Cupul on 24/12/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}

