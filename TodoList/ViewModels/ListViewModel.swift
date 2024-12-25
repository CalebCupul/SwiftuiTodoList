//
//  ListViewModel.swift
//  TodoList
//
//  Created by Caleb Cupul on 24/12/24.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems(){
        let items: [ItemModel] = [
            ItemModel(title: "Take a Walk", isCompleted: false),
            ItemModel(title: "LeetCode", isCompleted: false),
            ItemModel(title: "Wash the Dishes", isCompleted: true),
            ItemModel(title: "Take the Laundry", isCompleted: true)
        ]
        
        self.items.append(contentsOf: items)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index] = item.toggleCompletition()
        }
        
    }
}
